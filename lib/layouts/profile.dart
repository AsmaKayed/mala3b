import 'package:flutter/material.dart';

import '../reausable components/reusable components.dart';

class Profile extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: mainGrey,
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 42),
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 16,right: 77,),
                child: Image.asset('assets/backArrow.png',width: 25,height: 25,),
              ),
              Text('Customer Support',style: TextStyle(fontSize:18,fontFamily:"Poppins" ),),

            ],),
          ),])
    );
  }
}