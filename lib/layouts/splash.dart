import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children:[
          Container(
          decoration: BoxDecoration(image:DecorationImage(image: AssetImage('assets/background.png'),fit: BoxFit.cover))),
          Center(
            child: Container(
              width: 346.94,
                height: 645.55,
                decoration: BoxDecoration(image:DecorationImage(image: AssetImage('assets/ddd.png'),fit: BoxFit.cover))),
          ),
          Center(
            child: Container(
                width: 135.91,
                height: 135.91,
                decoration: BoxDecoration(image:DecorationImage(image: AssetImage('assets/circle.png'),fit: BoxFit.cover))),
          ),
          Center(
            child: Container(
                width: 82,
                height: 83,
                decoration: BoxDecoration(image:DecorationImage(image: AssetImage('assets/logo.png'),fit: BoxFit.cover))),
          ),

    ]),
      );
      

  }
}
