import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/layouts/myAccount.dart';
import '../reausable components/reusable components.dart';

class Discount extends StatelessWidget {

  List<String> codes=[
    'Flat 30',
    'Flat 50'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: mainGrey,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 42,bottom: 41),
              child: Row(children: [
                InkWell(
                  onTap: (){  Navigator.pop(context, MaterialPageRoute(builder: (context)=>Account()));},
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16,right: 120,),
                    child: Image.asset('assets/backArrow.png',width: 25,height: 25,),
                  ),
                ),
                Text('Discount',style: TextStyle(fontSize:18,fontFamily:"Poppins" ),),

              ],),

            ),
          Container(
            height:MediaQuery.of(context).size.height,
            child: ListView.builder(
              itemCount: codes.length,
              itemBuilder: (BuildContext context, int index)=> Padding(
                padding: const EdgeInsets.only(left: 16,right:16,top: 8),
                child: Container(
                  width: 382,height: 131,
                  color: mainWhite,
                  child: Column(
                    children: [
                      Row(
                        children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 16,left: 16,right: 160),
                    child: DottedBorder(
                      radius: Radius.circular(8),
                      color: mainGreen,
                    dashPattern: [8, 4],
                      strokeWidth: 2,
                      child: Container(
                        height: 32,
                        width: 70,
                        decoration: BoxDecoration(   color: Colors.lightGreen.shade100),
                         child: Center(child: Text('${codes[index]}',style: TextStyle(fontSize: 12,fontFamily: 'SF Pro Display',),)),
                      ),
                    ),
                  ),
                          GestureDetector(
                            onTap: (){  Clipboard.setData(ClipboardData(text:'${codes[index]}'));},
                            child: Container(
                              height: 30,width: 111,
                              margin: EdgeInsets.only(top: 16),
                              decoration: BoxDecoration(color: mainGrey,borderRadius: BorderRadius.circular(4)),
                              child: Center(
                                child: Row(children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset('assets/copy.png',width: 12,height: 12,),
                                  ),
                                  Text('Copy code',style: TextStyle(fontSize: 12),),
                                ],),
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 19,left: 16),
                        child: Text('Get 30 % cashback on your next Booking.Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs.',style: TextStyle(fontSize: 13,color: Color(0xff707070)),),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          ]),
        )
    );
  }
}