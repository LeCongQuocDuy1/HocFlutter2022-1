import 'package:flutter/material.dart';

class DetailMovie extends StatelessWidget {
  const DetailMovie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          buildBackGround(context),
        ],
      ),
    );
  }
}

buildBackGround(BuildContext context) {
  var size = MediaQuery.of(context).size;
  return Container(
    height: size.height,
    width: size.width,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage("assets/movie_images/img2.jpg"),
        fit: BoxFit.cover,
      ),
    ),
  );
}
