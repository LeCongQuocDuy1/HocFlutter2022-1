import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:hocflutter2022/view/detail_movie.dart';
import 'package:hocflutter2022/model/Movie.dart';

class MoviePage extends StatefulWidget {
  MoviePage({Key? key}) : super(key: key);

  @override
  State<MoviePage> createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  List<Movie> _listMovie = Movie.MockMovie();

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          buildBackGround(context),
          // buildLayer(),
          buidSliderContent(context),
          buidBuyTicketButton(context),
        ],
      ),
    );
  }

  buildLayer() {
    return Align(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.redAccent.withOpacity(0.1),
              Colors.orangeAccent.withOpacity(0.5),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
      ),
    );
  }

  buidSliderContent(BuildContext context) {
    return Container(
      child: Align(
        alignment: Alignment.topCenter,
        child: CarouselSlider.builder(
            itemCount: _listMovie.length,
            itemBuilder: (context, index, pageViewIndex) {
              return Container(
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 15),
                        child: Image.asset(_listMovie[index].bannerMovie, height: 80, fit: BoxFit.contain,)),
                    Container(
                      margin: EdgeInsets.only(top: 25, bottom: 10),
                      height: 300,
                      width: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(_listMovie[index].imgMovie),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 8),
                      child: Text(
                        _listMovie[index].nameMovie,
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        overflow: TextOverflow.fade,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 8),
                      child: Text(
                        _listMovie[index].categoryMovie,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                        overflow: TextOverflow.fade,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 8),
                      child: Text(
                        _listMovie[index].pointMovie,
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(margin: EdgeInsets.only(right: 5) ,child: Icon(Icons.star, color: Colors.orange,)),
                        Container(margin: EdgeInsets.only(right: 5) ,child: Icon(Icons.star, color: Colors.orange)),
                        Container(margin: EdgeInsets.only(right: 5) ,child: Icon(Icons.star, color: Colors.orange)),
                        Container(margin: EdgeInsets.only(right: 5) ,child: Icon(Icons.star, color: Colors.orange)),
                        Container(margin: EdgeInsets.only(right: 5) ,child: Icon(Icons.star, color: Colors.orange)),
                      ],
                    ),
                  ],
                ),
              );
            },
            options: CarouselOptions(
              height: 700,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
        ),
      ),
    );
  }

  buildBackGround(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return PageView.builder(
      itemCount: _listMovie.length,
      itemBuilder: (context, index) {
        print(currentIndex);
        return Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(_listMovie[currentIndex].imgMovie),
              fit: BoxFit.cover,
              opacity: 0.8,
            ),
          ),
        );
      },
    );
  }
}

buidBuyTicketButton(BuildContext context) {
  var size = MediaQuery.of(context).size;
  return Align(
    alignment: Alignment.bottomCenter,
    child: Container(
      margin: EdgeInsets.only(bottom: 30, left: 20, right: 20),
      height: size.height * 0.1,
      width: size.width,
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailMovie()),
            );
          },
          child: Text(
            'Buy Ticket',
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
        ),
      ),
    ),
  );
}
