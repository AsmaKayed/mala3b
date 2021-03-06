import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/layouts/paymentSuccessful.dart';
import 'package:untitled/modules/venue/venueFirst.dart';

import '../cubit/cubit.dart';
import '../cubit/states.dart';
import '../reausable components/reusable components.dart';

class BookingSummary extends StatefulWidget {

  @override
  State<BookingSummary> createState() => _BookingSummaryState();
}

class _BookingSummaryState extends State<BookingSummary>with SingleTickerProviderStateMixin {

  @override
  int selectedIndex = -1;

  Widget build(BuildContext context) {
    return  Scaffold(

    backgroundColor: mainGrey,
    body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(children: [
        Padding(
        padding: const EdgeInsets.only(top: 42,bottom: 35),
            child: Row(children: [
         InkWell(
           onTap: (){ Navigator.pop(context, MaterialPageRoute(builder: (context)=>FirstVenuePage()));},
           child: Padding(
              padding: const EdgeInsets.only(left: 16,right: 80,),
               child: Image.asset('assets/backArrow.png',width: 25,height: 25,),
      ),
         ),
                     Text('Booking Summary',style: TextStyle(fontSize:18,fontFamily:"Poppins" ),),],),),

        Stack(
          children:[ Container(
            width: 382, height: 645,
            margin: EdgeInsets.only(left: 16,right: 16),
            decoration: BoxDecoration(
              color: mainWhite,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(children: [
              Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 29),
                  child: Container(
                    height: 42,width: 130,
                    child: Column(children: [
                      Text('Stamford Bridge',style: TextStyle(fontSize: 15.5,fontFamily: 'Poppins'),),
                      Padding(
                        padding: const EdgeInsets.only(right: 55),
                        child: Text('Doha,Qatar',style: TextStyle(fontSize: 12,fontFamily: 'Poppins'),),
                      )
                    ],),
                  ),
                ),

                       Container(
                       margin: const EdgeInsets.only(left: 37,top: 36,),
                       decoration: BoxDecoration( color: mainGrey,borderRadius: BorderRadius.circular(2)),
                       width: 159,height: 28,
                       child: Row(children: [
                         Padding(
                           padding: const EdgeInsets.only(left: 8),
                           child: Icon(Icons.location_on_outlined,size: 18,),
                         ),
                         Text('Abu hamour, 32 Doha',style: TextStyle(fontSize: 11,fontFamily: 'Poppins',color:Color(0xff1D1D1B), ),),
                       ],
                       ),
                     ),


              ],),
              Row(children:[
              Stack(
                children: [Padding(
                  padding: const EdgeInsets.only(top: 32,left: 20),
                  child: Container(

                    width: 227,height: 73,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: mainGreen,width: 2)
                      ),
                         child:Center(
                           child: Padding(
                             padding: const EdgeInsets.only(top: 0,),
                             child: Container(
                                 child: Column(
                                   children: [
                                     Container(
                                       margin: EdgeInsets.only(left: 5,top:5,bottom: 10,right: 148),
                                       child: Text(
                                           '5x5 Pitch',
                                           style: TextStyle(
                                               fontSize: 15),),
                                     ),

                                     Row(
                                       children: [
                                         Container(
                                           child: Column(
                                             children: [
                                               Row(

                                                 children:[
                                                 Container(
                                                   margin: EdgeInsets.only(right: 5,left: 5),
                                                         width: 67,
                                                         height: 26,
                                                         color: mainGrey,
                                                         child: Center(
                                                             child: Text(
                                                               'Football',
                                                               style: TextStyle(
                                                                   fontSize: 13),))),

                                                   Container(
                                                       margin: EdgeInsets.only(right: 5,),
                                                       width: 67,
                                                       height: 26,
                                                       color: mainGrey,
                                                       child: Center(
                                                           child: Text(
                                                             'Volleyball',
                                                             style: TextStyle(
                                                                 fontSize: 13),))),

                                                   Container(

                                                       width: 67,
                                                       height: 26,
                                                       color: mainGrey,
                                                       child: Center(
                                                           child: Text(
                                                             'Hockey',
                                                             style: TextStyle(
                                                                 fontSize: 13),))),

                                                 ],

                                               ),


                                             ],
                                           ),
                                         )
                                       ],),
                                   ],
                                 )
                             ),
                           ),
                         ) ,
                  ),
                ),
                  Padding(
                    padding: const EdgeInsets.only(left:234,top: 25, ),
                    child: Container(

                      width: 18,height: 18,
                      decoration: BoxDecoration(shape: BoxShape.circle,color: mainGreen),
                      child:Icon(Icons.check,color: mainWhite,size: 16,),
                  ),)
                ]
              ),
                 Stack(
               children:[
                Padding(
                  padding: const EdgeInsets.only(top: 32,left: 20,),
                  child: Container(
                    width: 82,height: 73,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: mainGreen,width: 2)
                    ),
                       child:Column(children: [
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Image.asset('assets/secondfootball.png',width: 27,height: 27,),
                         ),
                         Center(child: Text('Football',style: TextStyle(fontSize: 13),)),
                       ],) ,
                  ),
                ),
                 Padding(
                   padding: const EdgeInsets.only(left:90,top: 25, ),
                    child: Container(

                    width: 18,height: 18,
                    decoration: BoxDecoration(shape: BoxShape.circle,color: mainGreen),
                    child:Icon(Icons.check,color: mainWhite,size: 16,),
                    ),
                 ),

               ] ),]
      ),
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 24,top: 30),
                      child: Text('Date',style: TextStyle(color: Color(0xff707070),fontFamily: 'Poppins',fontSize: 12),)),
                  Container(
                      margin: EdgeInsets.only(left: 278,top: 30),
                      child: Text('Time',style: TextStyle(color: Color(0xff707070),fontFamily: 'Poppins',fontSize: 12),)),
                ],
              ),

              Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 24,top: 5),
                      child: Text('04 October 2020',style: TextStyle(color: Color(0xff485C5D),fontFamily: 'Poppins',fontSize: 14),)),
                  Container(
                      margin: EdgeInsets.only(left: 100,top: 5),
                      child: Text('1.30 PM - 3.00 PM',style: TextStyle(color: Color(0xff485C5D),fontFamily: 'Poppins',fontSize: 14),)),
                ],
              ),
              Row(children: [
              Container(
                width: 220,height: 40,
                decoration: BoxDecoration(
                  color: Color(0xfffafafa),
                  borderRadius: BorderRadius.circular(4),
                ),
                margin: EdgeInsets.only(top: 30,left: 22),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                    disabledBorder: InputBorder.none,
                      hintText:'Enter Voucher Code',
                      hintStyle: TextStyle(fontSize:14,fontFamily: 'Poppins' ,color: Color(0xff707070)),)
                  ),
                ),

              Container(
                margin: EdgeInsets.only(top: 30,),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),color: Color(0xff313133)),
                width: 120,height: 40,
                child: MaterialButton(onPressed: (){},
                      child: Center(child: Text('APPLY CODE',style: TextStyle(fontSize:14,fontFamily: 'Poppins' ,color:mainWhite),)),
                ),
              ),
              ],),
              Container(
                width:333,
                height:99,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount:2,
                  itemBuilder: (BuildContext context, int index) =>InkWell(
                    onTap: () => setState(() => selectedIndex=index),
                    child: Container(
                      margin: EdgeInsets.only(top: 15,),
                      width: 333,height: 34,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Color(0xffF1F2F2),width: 1)
                        ),
                      child: Row(children: [
                       Container(
                           margin: EdgeInsets.only(left: 16,),
                           child: Image.asset('assets/credit.png',width: 22,height: 17,)),
                        Container(
                            margin: EdgeInsets.only(left: 9,right: 137),
                            child: Text('Credit/Debit Card')),
                        Padding(
                          padding: const EdgeInsets.all(0.0),
                         child: (selectedIndex==index)? Container(
                            width: 18,height: 18,
                            decoration: BoxDecoration(shape: BoxShape.circle,color: mainGreen),
                            child:Icon(Icons.check,color: mainWhite,size: 16,),
                          ):null,
                        ),

                      ],),
                    ),
                  ),
                ),
              ),
              // Container(
              //   margin: EdgeInsets.only(top: 15,left: 25,right: 25),
              //   width: 333,height: 34,
              //   decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(4),
              //       border: Border.all(color: Color(0xffF1F2F2),width: 1)
              //   ),
              //   child: Row(children: [
              //     Container(
              //         margin: EdgeInsets.only(left: 16,),
              //         child: Image.asset('assets/wallet.png',height: 20,width: 20,)),
              //     Container(
              //         margin: EdgeInsets.only(left: 9,right: 137),
              //         child: Text('Pay with your wallet')),
              //
              //
              //   ],),
              // ),

            ],),
          ),
            Padding(
              padding: const EdgeInsets.only(top:430 ),
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
                      lineLength: 332,
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
              padding: const EdgeInsets.only(top:450 ),
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 34,top: 20),
                  child: Text('5X5 Football pitch',style: TextStyle(fontSize: 12,fontFamily: 'Poppins',color: Color(0xff707070))),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:184,top: 20),
                  child: Text('QAR 120',style: TextStyle(fontSize: 12,fontFamily: 'Poppins',color: Color(0xff707070))),
                ),
              ],),
            ),
            Padding(
              padding: const EdgeInsets.only(top:470 ),
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 34,top: 20),
                  child: Text('Red Bull 600 ml',style: TextStyle(fontSize: 12,fontFamily: 'Poppins',color: Color(0xff707070))),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:212,top: 20),
                  child: Text('QAR 5',style: TextStyle(fontSize: 12,fontFamily: 'Poppins',color: Color(0xff707070))),
                ),
              ],),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 34,left: 34,top: 515),
              child: Container(
                height:1.5,width: 380,
                color: mainGrey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:510 ),
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 34,top: 20),
                  child: Text('5X5 Football pitch',style: TextStyle(fontSize: 12,fontFamily: 'Poppins',color: Color(0xff707070))),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:184,top: 20),
                  child: Text('QAR 120',style: TextStyle(fontSize: 12,fontFamily: 'Poppins',color: Color(0xff707070))),
                ),
              ],),
            ),
            Padding(
              padding: const EdgeInsets.only(top:530 ),
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 34,top: 20),
                  child: Text('Red Bull 600 ml',style: TextStyle(fontSize: 12,fontFamily: 'Poppins',color: Color(0xff707070))),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:212,top: 20),
                  child: Text('QAR 5',style: TextStyle(fontSize: 12,fontFamily: 'Poppins',color: Color(0xff707070))),
                ),
              ],),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 34,left: 34,top: 575),
              child: Container(
                height:1.5,width: 380,
                color: mainGrey,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top:570 ),
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 34,top: 20),
                  child: Text('Total',style: TextStyle(fontSize: 14,fontFamily: 'Poppins',color: Colors.black)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:250,top: 20,right: 34),
                  child: Text('QAR 120',style: TextStyle(fontSize: 14,fontFamily: 'Poppins',color: Colors.black)),
                ),
              ],),
            ),

          ]),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: mainGreen,),
          width: 346,height:41 ,
          margin: const EdgeInsets.only( top: 24,right: 34,left: 34 ,bottom:15),
          child: Row(
            children:[MaterialButton(
              onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentSuccessful()));},
              child: Padding(
                padding: const EdgeInsets.only(left: 232),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Next',style: TextStyle(color:mainWhite,fontFamily: 'Poppins',fontSize: 16 ),),
                    ),
                    Image.asset("assets/arrow.png",),
                  ],
                ),
              ),
                 ),

          ],),


        ),


 ] ),
    )  );
  }


}
