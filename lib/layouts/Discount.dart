import 'package:flutter/material.dart';

import '../reausable components/reusable components.dart';

class Discount extends StatelessWidget {
  const Discount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: mainGrey,
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 42,bottom: 41),
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 16,right: 120,),
                child: Image.asset('assets/backArrow.png',width: 25,height: 25,),
              ),
              Text('Discount',style: TextStyle(fontSize:18,fontFamily:"Poppins" ),),

            ],),

          ),
        Container(
          width: 382,height: 131,
          color: mainWhite,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 70,height: 32,
                    decoration: BoxDecoration(border: Border.all()),
                  )
                ],
              )
            ],
          ),
        ),

        ])
    );
  }
}