import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

import '../reausable components/reusable components.dart';

class Checkout extends StatelessWidget {

  TextEditingController nameController=TextEditingController(text: "John Doe",);
  TextEditingController accountController=TextEditingController(text: "2408 5469 5643 6873",);
  TextEditingController dateController=TextEditingController(text: "02/22",);
  TextEditingController cvvController=TextEditingController(text: "547",);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: mainGrey,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 42),
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16,right: 77,),
                  child: Image.asset('assets/backArrow.png',width: 25,height: 25,),
                ),
                Text('Customer Support',style: TextStyle(fontSize:18,fontFamily:"Poppins" ),),

              ],),
            ),
          Stack(
            children: [Padding(
              padding: const EdgeInsets.only(top: 35,left: 16,right: 16),
              child: Container(
                width: 382,height: 542,
                decoration: BoxDecoration(color: mainWhite,borderRadius: BorderRadius.circular(25)),
              ),),

              Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 70,right: 180),
                  child: Text('Enter Card Details',style: TextStyle(color: Colors.black,fontSize: 16,fontFamily: 'Poppins'),),
                ),
                Container(
                  margin: EdgeInsets.only(top:36,left: 45 ,right: 45),
                  width: 380,height: 64,
                  decoration: BoxDecoration(color: mainGrey,borderRadius: BorderRadius.circular(8),),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25,right: 27),
                    child: TextFormField(
                      controller: nameController,
                      validator: (value){},
                      decoration: InputDecoration( border: InputBorder.none,label: Text('Account Holder Name',style: TextStyle(fontSize: 15,fontFamily: 'Poppins',color: Color(0xff707070)),)),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top:30,left: 45 ,right: 45),
                  width: 380,height: 64,
                  decoration: BoxDecoration(color: mainGrey,borderRadius: BorderRadius.circular(8),),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25,right: 27),
                    child: TextFormField(
                      
                      controller: accountController,
                      validator: (value){},
                      decoration: InputDecoration( 
                          suffix: Image.asset('assets/visa.png'),
                          
                          border: InputBorder.none,label: Text('Account number',style: TextStyle(fontSize: 15,fontFamily: 'Poppins',color: Color(0xff707070)),)),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 23,top:30,left: 45 ),
                      width: 190,height: 64,
                      decoration: BoxDecoration(color: mainGrey,borderRadius: BorderRadius.only(topLeft: Radius.circular(8),bottomLeft: Radius.circular(8) ),),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: TextFormField(
                          controller: dateController,
                          validator: (value){},
                          decoration: InputDecoration( border: InputBorder.none,label: Text('Expiry date',style: TextStyle(fontSize: 15,fontFamily: 'Poppins',color: Color(0xff707070)),)),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 23,top:30,right:40 ),
                      width: 133,height: 64,
                      decoration: BoxDecoration(color: mainGrey,borderRadius:BorderRadius.only(topRight: Radius.circular(8),bottomRight: Radius.circular(8)),),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25,right: 27),
                        child: TextFormField(
                          controller: cvvController,
                          validator: (value){},
                          decoration: InputDecoration( border: InputBorder.none,label: Text('CVV',style: TextStyle(fontSize: 15,fontFamily: 'Poppins',color: Color(0xff707070)),)),
                        ),
                      ),
                    ),
                  ],
                )

              ],),


              Padding(
                padding: const EdgeInsets.only(top:390 ),
                child: Row(

                  children: [
                    Align(
                        child: Transform.scale(
                          scale: 1,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 1,right: 2),
                            child: Container(
                              width:32,height: 32,
                              decoration: BoxDecoration(shape: BoxShape.circle,color: mainGrey,),
                            ),
                          ),
                        ),
                        alignment:Alignment.centerLeft
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12,left: 11),
                      child: DottedLine(
                        dashColor:Colors.purple,
                        lineLength: 320,
                        dashLength: 15,
                        dashGapLength: 15,
                      ),
                    ),
                    Align(
                        child: Transform.scale(
                          scale: 1,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 1,),
                            child: Container(
                              width:32,height: 32,
                              decoration: BoxDecoration(shape: BoxShape.circle,color: mainGrey,),
                            ),
                          ),
                        ),
                        alignment:Alignment.centerRight
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:419 ),
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 45,top: 20),
                    child: Text('5X5 Football pitch',style: TextStyle(fontSize: 15,fontFamily: 'Poppins',color: Color(0xff707070))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:100,top: 20),
                    child: Text('QAR 120',style: TextStyle(fontSize: 15,fontFamily: 'Poppins',color: Color(0xff707070))),
                  ),
                ],),
              ),
              Container(),
            ]
          ),

          ]),
        )
    );
  }
}