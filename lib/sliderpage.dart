import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({Key? key}) : super(key: key);

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  List<String> _listImg = [
    'assets/slider/banner.jpg',
    'assets/slider/banner3.png',
    'assets/slider/baiviet3.jpg',
    'assets/slider/baiviet7.jpg',
  ];

  int currentIndex = 0;
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: 300,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              SizedBox(height: 100),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: blockSlider(),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: blockIndicator(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  blockSlider() {
    return Container(
      width: double.infinity,
      height: 300,
      margin: EdgeInsets.all(16),
      alignment: Alignment.center,
      child: PageView(
        scrollDirection: Axis.horizontal,
        children: [
          ..._listImg.map((e) {
            return Image.asset(
              e,
              fit: BoxFit.cover,
            );
          }),
        ],
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }

  blockIndicator() {
    return Container(
        height: 60,
        width: double.infinity,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _listImg.length,
            itemBuilder: (context, index) {
              return Container(
                height: ((currentIndex == index) ? 30 : 20),
                width: ((currentIndex == index) ? 30 : 20),
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: ((currentIndex == index)
                        ? Colors.purple
                        : Colors.grey)),
              );
            }));
  }
}
