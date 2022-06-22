import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:untitled/layouts/myAccount.dart';

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
                InkWell(
                  onTap: (){  Navigator.pop(context, MaterialPageRoute(builder: (context)=>Account()));},
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16,right: 115,),
                    child: Image.asset('assets/backArrow.png',width: 25,height: 25,),
                  ),
                ),
                Text('Checkout',style: TextStyle(fontSize:18,fontFamily:"Poppins" ),),

              ],),
            ),
          Stack(
            children: [Padding(
              padding: const EdgeInsets.only(top: 35,left: 16,right: 16),
              child: Container(
                width: 382,height: 555,
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
                      margin: EdgeInsets.only(bottom: 23,top:30,right: 45),
                      width: 131,height: 64,
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
                      padding: const EdgeInsets.only(left: 11),
                      child: DottedLine(
                        dashColor:mainGrey,
                        lineLength: 330,
                        dashLength: 15,
                        dashGapLength: 15,
                        lineThickness: 2,
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
                padding: const EdgeInsets.only(top:420 ),
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 43,top: 20),
                    child: Text('5X5 Football pitch',style: TextStyle(fontSize: 12,fontFamily: 'Poppins',color: Color(0xff707070))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:170,top: 20),
                    child: Text('QAR 120',style: TextStyle(fontSize: 12,fontFamily: 'Poppins',color: Color(0xff707070))),
                  ),
                ],),
              ),
              Padding(
                padding: const EdgeInsets.only(top:440 ),
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 43,top: 20),
                    child: Text('Red Bull 600 ml',style: TextStyle(fontSize: 12,fontFamily: 'Poppins',color: Color(0xff707070))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:197,top: 20),
                    child: Text('QAR 5',style: TextStyle(fontSize: 12,fontFamily: 'Poppins',color: Color(0xff707070))),
                  ),
                ],),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 43,left: 34,top: 485),
                child: Container(
                  height:1.5,width: 380,
                  color: mainGrey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:475 ),
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 43,top: 20),
                    child: Text('Sub Total',style: TextStyle(fontSize: 12,fontFamily: 'Poppins',color: Color(0xff707070))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:222,top: 20),
                    child: Text('QAR 120',style: TextStyle(fontSize: 12,fontFamily: 'Poppins',color: Color(0xff707070))),
                  ),
                ],),
              ),
              Padding(
                padding: const EdgeInsets.only(top:495 ),
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 43,top: 20),
                    child: Text('Discount',style: TextStyle(fontSize: 12,fontFamily: 'Poppins',color: Color(0xff707070))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:237,top: 20),
                    child: Text('QAR 5',style: TextStyle(fontSize: 12,fontFamily: 'Poppins',color: Color(0xff707070))),
                  ),
                ],),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 43,left: 43,top: 540),
                child: Container(
                  height:1.5,width: 380,
                  color: mainGrey,
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top:530 ),
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 41,top: 20),
                    child: Text('Total',style: TextStyle(fontSize: 14,fontFamily: 'Poppins',color: Colors.black)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:239.4,top: 20,right: 43),
                    child: Text('QAR 120',style: TextStyle(fontSize: 13,fontFamily: 'Poppins',color: Colors.black)),
                  ),
                ],),
              ),




            ]
          ),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: mainGreen,),
              width: 346,height:41 ,
              margin: const EdgeInsets.only( top: 24,right: 34,left: 34 ,bottom:15),
              child: Row(
                children:[MaterialButton(
                  onPressed: (){},
                  child: Padding(
                    padding: const EdgeInsets.only(left: 232),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Pay',style: TextStyle(color:mainWhite,fontFamily: 'Poppins',fontSize: 16 ),),
                        ),
                        Image.asset("assets/arrow.png",),
                      ],
                    ),
                  ),
                ),

                ],),


            ),
          ]),
        )
    );
  }


}