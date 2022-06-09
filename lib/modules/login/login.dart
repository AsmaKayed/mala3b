import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/modules/login/otp.dart';
import 'package:untitled/reausable%20components/reusable%20components.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceData=MediaQuery.of(context);
    final mobileNumberController=TextEditingController();

    return Scaffold(
      body:Stack(
          children:[
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
                     SizedBox(height: 97,),
                     Container(
                       margin: const EdgeInsets.only(left: 63,right: 63),
                       child: Text("Login with your mobile number",style: TextStyle(color:Colors.white,fontSize: 19),),
                     ),
                     SizedBox(height: 24,),
                     Padding(
                       padding: const EdgeInsets.only(left:24, right: 24, ),
                       child: defaultTextField(controller: mobileNumberController , validate: (value){}, label: "Enter your mobile number", prefix: Icon(Icons.call,color: Colors.green,)),
                     ),
                     SizedBox(height: 24,),
                     Padding(
                       padding: const EdgeInsets.only(right: 133,left: 133),
                       child: Container(
                         child: Row(
                           children: [
                             Container(
                               child: Image.asset('assets/right.png',width:17 ,height: 17,),
                             ),
                             SizedBox(width: 2,),
                             Text("Terms & conditions",style: TextStyle(color:Colors.white,fontSize: 14),),
                           ],
                         ),
                       ),
                     ),
                     SizedBox(height: 24,),

                    Container(
                      margin: const EdgeInsets.only(left:24,  ),
                      child: Row( children:[defaultBottom(imageText:"assets/arrow.png",function: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>OTP()));
                      }, text:'Sign in', width: 366 ),

                  ],),


                  ),

                   ]
                 ),
               ),

          
          
          ]));


  }
}
