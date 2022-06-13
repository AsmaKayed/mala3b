import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

import '../reausable components/reusable components.dart';

class PaymentSuccessful extends StatelessWidget {


  @override
  TextEditingController idController=TextEditingController(text: "12312 123123 12313",);
  TextEditingController locationController=TextEditingController(text: "Stamford Bridge",);
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainGrey,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 47,),
            child: Stack(
              children:[ Padding(
                padding: const EdgeInsets.only(left: 20,right: 16),
                child: Container(
                  width: 370,height: 490,
                  decoration: BoxDecoration(
                    color: mainWhite,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(top:19 ,bottom: 5),
                      child: Image.asset('assets/success.png',),
                    ),
                    Text('Payment Successful',style: TextStyle(color: mainGreen,fontSize: 22),),

                  ],),
                ),
              ),
                Padding(
                  padding: const EdgeInsets.only(top:90 ),
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
                        padding: const EdgeInsets.only(left: 0),
                        child: DottedLine(
                          dashColor:mainGrey,
                          lineLength: 340,
                          dashLength: 15,
                          dashGapLength: 15,
                          lineThickness: 2,
                        ),
                      ),
                      Align(
                          child: Transform.scale(
                            scale: 1,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 1,left: 0),
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
                Container(
                  margin: EdgeInsets.only(top:132,left: 45 ,right: 45),
                  width: 326,height: 64,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),border: Border.all(width: 1.5,color: mainGrey)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25,right: 27),
                    child: TextFormField(
                      controller: idController,
                      validator: (value){},
                      decoration: InputDecoration( border: InputBorder.none,label: Text('Booking ID',style: TextStyle(fontSize: 15,fontFamily: 'Poppins',color: Color(0xff707070)),)),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top:210,left: 45 ,right: 45),
                  width: 326,height: 64,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),border: Border.all(width: 1.5,color: mainGrey)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25,right: 27),
                    child: TextFormField(
                      controller: locationController,
                      validator: (value){},
                      decoration: InputDecoration( border: InputBorder.none,label: Text('Location',style: TextStyle(fontSize: 15,fontFamily: 'Poppins',color: Color(0xff707070)),)),
                    ),
                  ),
                ),

                Row(children: [
                  Container(

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 45,left: 50,top: 288),
                        child: Text("Date     ",style: TextStyle(color: Color(0xff707070),fontSize: 12,fontFamily: 'Poppins'),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 45,left: 50,top: 5),
                        child: Text("04 October 2020",style: TextStyle(color: Color(0xff313133),fontSize: 14,fontFamily: 'Poppins'),),
                      ),

                    ],),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 290),
                    child: Container(
                      width: 1,
                      height: 36.5,color: mainGrey),
                  ),
                  Container(

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 288,left: 70,right: 22),
                          child: Text("Time     ",style: TextStyle(color: Color(0xff707070),fontSize: 12,fontFamily: 'Poppins'),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 37,top: 5,left: 37),
                          child: Text("1.30 PM - 3.00 PM",style: TextStyle(color: Color(0xff313133),fontSize: 14,fontFamily: 'Poppins'),),
                        ),


                      ],),
                  ),
                ],),
                Padding(
                  padding: const EdgeInsets.only(right: 37,left:37,top: 347,),
                  child: Center(
                    child: Container(
                      color: Color(0xff707070),
                      height: 0.1,width: 326,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:350 ),
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 43,top: 20),
                      child: Text('5X5 Football pitch',style: TextStyle(fontSize: 14,fontFamily: 'Poppins',color: Color(0xff707070))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:145,top: 20),
                      child: Text('QAR 120',style: TextStyle(fontSize: 14,fontFamily: 'Poppins',color: Color(0xff707070))),
                    ),
                  ],),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:380 ),
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 43,top: 20),
                      child: Text('Red Bull 600 ml',style: TextStyle(fontSize: 14,fontFamily: 'Poppins',color: Color(0xff707070))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:175,top: 20),
                      child: Text('QAR 5',style: TextStyle(fontSize: 14,fontFamily: 'Poppins',color: Color(0xff707070))),
                    ),
                  ],),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 37,left:37,top: 440,),
                  child: Center(
                    child: Container(
                      color: Color(0xff707070),
                      height: 0.7,width: 326,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:430 ),
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 44,top: 20),
                      child: Text('Total amount',style: TextStyle(fontSize: 14,fontFamily: 'Poppins',color: Colors.black)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:176.4,top: 20,right: 43),
                      child: Text('QAR 125',style: TextStyle(fontSize: 13,fontFamily: 'Poppins',color: Colors.black)),
                    ),
                  ],),
                ),

              ]
            ),
          ),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: mainGreen,),
            width: 346,height:41 ,
            margin: const EdgeInsets.only( top: 10,right: 34,left: 34 ,bottom:15),
            child: Row(
              children:[MaterialButton(
                onPressed: (){},

                  child: Padding(
                    padding: const EdgeInsets.only(left: 110),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Share',style: TextStyle(color:mainWhite,fontFamily: 'Poppins',fontSize: 16 ),),
                        ),
                        Image.asset("assets/share.png",),
                      ],
                    ),
                  ),

              ),

              ],),


          ),





    ],),),
    );
  }
}
