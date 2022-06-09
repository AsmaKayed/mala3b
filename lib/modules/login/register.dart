

import 'package:flutter/material.dart';
import 'package:untitled/modules/mainModule/homePage.dart';

import '../../reausable components/reusable components.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final otpController=TextEditingController();
    return Scaffold(
        body: Stack(
            children: [
              Container(
                  decoration: BoxDecoration(image:DecorationImage(image: AssetImage('assets/green.png'),fit: BoxFit.cover))),

              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 118,left:155,right: 155 ),
                      child: Image.asset('assets/logo.png',width:103 ,height: 103,),
                    ),
                    SizedBox(height: 119,),
                    Container(
                      margin: const EdgeInsets.only(left: 63,right: 63),
                      child: Text("Register",style: TextStyle(color:Colors.white,fontSize: 24),),
                    ),
                    SizedBox(height: 24,),
                    Padding(
                      padding: const EdgeInsets.only(left:24, right: 24, ),
                      child: defaultTextField(controller: otpController , validate: (value){}, label: "    Enter your name", ),
                    ),


                    SizedBox(height: 24,),
                    Padding(
                      padding: const EdgeInsets.only(left:24, right: 24, ),
                      child: defaultTextField(controller: otpController , validate: (value){}, label: "    Enter your Email", ),
                    ),
                    SizedBox(height: 40,),
                    Container(
                      margin: const EdgeInsets.only(left:24,  ),
                      child: Row( children:[defaultBottom(imageText:"assets/arrow.png",function: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                      }, text:'Register', width: 366 ),

                      ],),


                    ),
                  ],

                ),
              ),

            ]  ));
  }
}
