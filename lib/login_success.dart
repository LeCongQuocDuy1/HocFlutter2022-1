import 'package:flutter/material.dart';

class SuccessLogin extends StatelessWidget {
  const SuccessLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Log in success ! Welcome my friend ><",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.yellowAccent,
          ),
        ),
      ),
    );
  }
}
