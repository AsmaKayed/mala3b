import 'package:flutter/material.dart';

import '../reausable components/reusable components.dart';

class Notifications extends StatelessWidget {


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
                  padding: const EdgeInsets.only(left: 16,right: 108,),
                  child: Image.asset('assets/backArrow.png',width: 25,height: 25,),
                ),
                Text('Notification',style: TextStyle(fontSize:18,fontFamily:"Poppins" ),),

              ],),
            ),
          Container(
            height: 600,
            margin: EdgeInsets.only(top:45),
            child: ListView.builder(
            itemCount: 5,
            itemBuilder: (_,index) {
                return Container(
                  margin: EdgeInsets.only(left: 16,right: 16, ),
                  width: 382,height: 100,
                  child: Card(
                      color: mainWhite,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:23,right: 6),
                          child: Container(
                            height:48,width: 48,
                            decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: mainGreen)),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              child: Container(
                                margin: const EdgeInsets.only(top:17 ),
                                width:294,height: 53,
                                child: Text('Lorem ipsum, or lipsum as it is sometimes known'
                                'is dummy text used in laying out print, graphic or'
                                       'web designs.',overflow: TextOverflow.clip,style: TextStyle(fontSize:12, fontFamily: 'Poppins',color: Color(0xff707070)),),
                              ),
                            ),
                              Text('1 minute ago',style: TextStyle(fontSize: 10,fontFamily: 'Poppins',color: Color(0xff707070)),),

                          ],),
                        ],),
                    ),

                );
            }),
          )


          ]),
        )
    );
  }
}