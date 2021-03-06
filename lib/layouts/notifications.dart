import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:untitled/layouts/try.dart';

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
                InkWell(
                  onTap: (){  Navigator.pop(context, MaterialPageRoute(builder: (context)=>HomeLayout()));},
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16,right: 108,),
                    child: Image.asset('assets/backArrow.png',width: 25,height: 25,),
                  ),
                ),
                Text('Notification',style: TextStyle(fontSize:18,fontFamily:"Poppins" ),),

              ],),
            ),
          Container(
            height: 600,

            child: ListView.builder(
            itemCount: 5,
            itemBuilder: (_,index) {
                return Slidable(
                      // Specify a key if the Slidable is dismissible.
                      key: UniqueKey(),

                      // The start action pane is the one at the left or the top side.
                      startActionPane: ActionPane(
                        // A motion is a widget used to control how the pane animates.
                        motion: const ScrollMotion(),

                        // A pane can dismiss the Slidable.
                        dismissible: DismissiblePane(onDismissed: () {}),

                        // All actions are defined in the children parameter.
                        children:  [
                          // A SlidableAction can have an icon and/or a label.
                          Expanded(
                            child: Container(
                              color: Color(0xffd52222),
                              height: 89,width: 120,
                              child: Center(child: Text('Delete',style: TextStyle(color: Colors.white,fontSize: 13),)),

                            ),
                          ),

                        ],),

                  child: Container(
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

                  ),
                );
            }),
          )


          ]),
        )
    );
  }
}