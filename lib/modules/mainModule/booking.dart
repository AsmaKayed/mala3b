import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/reausable%20components/reusable%20components.dart';

class Booking extends StatelessWidget {
  const Booking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var length;
    return Scaffold(
      backgroundColor: mainGrey,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
             margin: EdgeInsets.only(top: 43,left: 16,right: 368),
                child: Icon(Icons.arrow_back_outlined,color: mainGreen,size: 25,)),
            Row(
              children: [
                Container(
                    margin: EdgeInsets.only(top: 6,left: 122,),
                    child: Text('Active Bookings',style: TextStyle(fontFamily: 'Poppins'))),

                Container(
                  margin: EdgeInsets.only(top: 6,left: 6),
                  width: 21,height: 21,
                  decoration: BoxDecoration(shape: BoxShape.circle,color: mainGreen),
                  child: Center(
                    child: Container(

                        child: Text('1',style:TextStyle(fontSize: 13,color: mainWhite),)),
                  ),

                ),

              ],
            ),
            Stack(
              children:[

                Container(
                margin: EdgeInsets.only(top: 12,left: 16,right: 16),
                width: 382,height: 244,
                decoration: BoxDecoration(color: mainWhite,borderRadius: BorderRadius.circular(24)),),
                  Row(
                    children: [

                      Container(
                        child: Column(children: [
                          Row(
                            children: [

                              Container(
                                width: 57,height: 49,
                                  margin: EdgeInsets.only(left: 23,top: 31, bottom:84 ),
                                  child: Image.asset('assets/pic.png',)),

                               Column(
                                  children: [

                                    Padding(
                                      padding: const EdgeInsets.only(left: 10,top: 26,right: 195),
                                      child: Text('Stamford Pridge',style: TextStyle(fontSize:15,fontFamily: 'Poppins', ),),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 14,left: 10,right: 190),
                                      child: Text('Booking ID#23423423423',textAlign: TextAlign.start,style: TextStyle(fontSize:10,fontFamily: 'Poppins',color:  Color(0xff707070))),
                                    ),
                                    Row(
                                      children:[
                                        Column(
                                          children:[
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 14,left: 10,right:100 ),
                                      child: Text('Order Total',style: TextStyle(fontSize:10,fontFamily: 'Poppins',color:  Color(0xff707070))),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 14,right: 115),
                                      child: Text('Status',style: TextStyle(fontSize:10,fontFamily: 'Poppins',color:  Color(0xff707070))),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 14,left: 10,right:70),
                                      child: Text('Exp Delivery Time',style: TextStyle(fontSize:10,fontFamily: 'Poppins',color:  Color(0xff707070))),
                                    ),]),
                                        Column(
                                            children:[
                                              Padding(
                                                padding: const EdgeInsets.only(bottom: 14,left: 58,right: 0),
                                                child: Text('125 QR',style: TextStyle(fontSize:10,fontFamily: 'Poppins',color:  Color(0xff707070))),
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left:58,right: 0,bottom: 14, ),
                                                    child: Icon(Icons.check_circle,color: mainGreen,size: 14,),
                                                  ),


                                                  Padding(
                                                    padding: const EdgeInsets.only(bottom: 14,right: 31),
                                                    child: Text('Completed',style: TextStyle(fontSize:10,fontFamily: 'Poppins',color:  Color(0xff707070))),
                                                  ),


                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(bottom: 14,left: 58,right: 31),
                                                child: Text('OCT 9 5:02pm',style: TextStyle(fontSize:10,fontFamily: 'Poppins',color:  Color(0xff707070))),
                                              ),]),

                                      ]),
                                  ],
                                ),


                              ],
                          ),


                          Row(

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
                                  dashColor:mainGrey,
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 47),
                                child: Container(
                                  width: 113,height: 30,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(9),color: mainGreen),
                                  child: MaterialButton(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                      Text('Share',style: TextStyle(fontFamily:'Poppins',fontSize: 12,color: mainWhite),),
                                      Icon(Icons.share,color: mainWhite,size: 15,)

                                    ],),
                                    onPressed:(){},
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 47),
                                child: Container(
                                  width: 113,height: 30,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(9),color: mainGrey),
                                  child: MaterialButton(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text('Cancel',style: TextStyle(fontFamily:'Poppins',fontSize: 12,color: Colors.black),),


                                      ],),
                                    onPressed:(){},),),),

                            ],),],),),],),
                                 ]),
               Container(
                padding: EdgeInsets.only(top: 15),
                 child: Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 6,left: 122,),
                      child: Text('Post Bookings',style: TextStyle(fontFamily: 'Poppins'))),

                  Container(
                    margin: EdgeInsets.only(top: 6,left: 6),
                    width: 21,height: 21,
                    decoration: BoxDecoration(shape: BoxShape.circle,color: Color(0xff707070)),
                    child: Center(
                      child: Container(

                          child: Text('20',style:TextStyle(fontSize: 13,color: mainWhite),)),
                    ),

                  ),

                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(itemCount:4,itemBuilder:(_,index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 20, left: 39, right: 39),
                  child: Container(
                    color:mainGrey,
                    width: 334, height: 47,
                    child: Row(
                      children: [
                        Container(
                            width: 51, height: 42,
                            margin: EdgeInsets.only(bottom: 5),
                            child: Image.asset('assets/pic.png',)),
                        Column(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 11,),
                            child: Container(

                                child: Text('Stamford Pridge', style: TextStyle(
                                  fontSize: 14, fontFamily: 'Poppins',),)),
                          ),
                          Row(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 11,),
                                  child: Text('2020-10-05', style: TextStyle(
                                      fontSize: 9,
                                      fontFamily: 'Poppins',
                                      color: Color(0xff707070))),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 11,),
                                  child: Text('83.00 QAR', style: TextStyle(
                                      fontSize: 9,
                                      fontFamily: 'Poppins',
                                      color: Color(0xff707070))),
                                ),
                              ),
                            ],
                          ),


                        ],),
                        Padding(
                          padding: const EdgeInsets.only(left: 60),
                          child: Container(
                            width: 84, height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9),
                                color: mainGreen),
                            child: MaterialButton(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('Rebook', style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                      color: Colors.white),),


                                ],),
                              onPressed: () {},),),),

                      ],
                    ),

                  ),
                );
              }

              ),
            )
            ],

        ),
      ),
    );
  }
}
