
import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../../appModels/appModels.dart';
import '../../cubit/cubit.dart';
import '../../cubit/states.dart';
import '../../reausable components/reusable components.dart';
import '../../layouts/date.dart' as date_util;
class FirstVenuePage extends StatefulWidget {

  @override
  State<FirstVenuePage> createState() => _FirstVenuePageState();
}

class _FirstVenuePageState extends State<FirstVenuePage> {
  final CarouselController _controller = CarouselController();
  double width = 0.0;
  double height = 0.0;
  late ScrollController scrollController;
  List<DateTime> currentMonthList = List.empty();
  DateTime currentDateTime = DateTime.now();
  List<String> todos = <String>[];
  TextEditingController controller = TextEditingController();
List<String> duration=[
  '60 ',
  '90 ',
  '120 ',
];
  List<String> slots=[
    '01:30pm ',
    '02:00pm ',
    '02:30pm ',
  ];
  @override
  void initState() {
    currentMonthList = date_util.DateUtils.daysInMonth(currentDateTime);
    currentMonthList.sort((a, b) => a.day.compareTo(b.day));
    currentMonthList = currentMonthList.toSet().toList();
    scrollController =
        ScrollController(initialScrollOffset: 70.0 * currentDateTime.day);
    super.initState();
  }





  @override
  Widget build(BuildContext context) {
    List _selectedIndexs=[];
    bool viewObject=true;
    List<PitchModel>? pitch=[
      PitchModel(size: '5x5 pitch', name: 'football', image: Image.asset('assets/secondfootball.png' ,),),
      PitchModel(size: '6x6 pitch', name: 'volleyball', image:Image.asset('assets/secondbasketball.png'),),
    ];
    final dateList = [
     'january',
      'February',
      'March',
      'April',
    ];


    return BlocProvider(
        create: (BuildContext context)=>AppCubit(),

    child: BlocConsumer<AppCubit,AppStates>(
    listener: (BuildContext context,AppStates){},
    builder: (BuildContext context,AppStates)
    =>Scaffold(
      backgroundColor: Color(0xfffafafa),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
        Row(
        children: [
        Container(
        alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 43,left: 16,),
            child: Icon(Icons.arrow_back_outlined,color: mainGreen,size: 30,)),
        Container(
            margin: EdgeInsets.only(top: 43,left: 90,),
            child: Text('Stamford Bridge',style: TextStyle(fontFamily: 'Poppins',fontSize: 18))),
        ],
      ),
        Stack(
          children: [Container(
            margin: EdgeInsets.only(top: 18),
              width:414 ,height: 234,
              child: Image.asset('assets/venue.png')),

            Container(
              margin: EdgeInsets.only(top: 230),
              width: 414,height:935,
              decoration: BoxDecoration(color:mainWhite,borderRadius: BorderRadius.circular(35)),
             child: Column(children: [
               Row(children: [
                 const Padding(
                   padding: EdgeInsets.only(left: 24,top: 46),
                   child: Text('WESTBAY , Doha, Qatar',style: TextStyle(fontSize: 12,fontFamily: 'Poppins',fontWeight: FontWeight.w100),),
                 ),

                 Padding(
                   padding: const EdgeInsets.only(left: 200,top: 50),
                   child: Image.asset('assets/loc.png',width: 25,height: 25,),
                 ),

               ],),
               Container(
                 padding: const EdgeInsets.only(right:299,top:42,left: 20),
                 child: Text('Select Pitch',overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 16,fontFamily: 'Poppins'),),
               ),
               SingleChildScrollView(
                 scrollDirection: Axis.horizontal,
                 child: Row(children:[
                   Stack(
                       children: [Padding(
                         padding: const EdgeInsets.only(top: 13,left: 20),
                         child: InkWell(
                           onTap: (){
                             AppCubit.get(context).venueFirstStyle();
                           },
                           child: Container(

                             width: 227,height: 73,
                             decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(4),
                                 border: Border.all(color:AppCubit.get(context).venueFirst? mainGreen:mainGrey,width: 2)
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
                                                 color: AppCubit.get(context).venueFirst? null:Color(0xffB4BFC5),
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
                                                                     color: AppCubit.get(context).venueFirst? null:Color(0xffB4BFC5),
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
                                                                     color: AppCubit.get(context).venueFirst? null:Color(0xffB4BFC5),
                                                                     fontSize: 13),))),

                                                       Container(

                                                           width: 67,
                                                           height: 26,
                                                           color: mainGrey,
                                                           child: Center(
                                                               child: Text(
                                                                 'Hockey',
                                                                 style: TextStyle(
                                                                   color: AppCubit.get(context).venueFirst? null:Color(0xffB4BFC5),
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
                       ),
                         Padding(
                           padding: const EdgeInsets.only(left:234,top: 10, ),
                           child: AppCubit.get(context).venueFirst?Container(

                             width: 18,height: 18,
                             decoration: BoxDecoration(shape: BoxShape.circle,color: mainGreen),
                             child:Icon(Icons.check,color: mainWhite,size: 16,),
                           ):null,)
                       ]
                   ),
                   Stack(
                       children: [Padding(
                         padding: const EdgeInsets.only(top: 13,left: 20),
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
                           padding: const EdgeInsets.only(left:234,top: 10, ),
                           child: Container(

                             width: 18,height: 18,
                             decoration: BoxDecoration(shape: BoxShape.circle,color: mainGreen),
                             child:Icon(Icons.check,color: mainWhite,size: 16,),
                           ),)
                       ]
                   ),
              ]
                 ),
               ),


                  // SingleChildScrollView(
                  //    scrollDirection: Axis.horizontal,
                  //
                  //    child: Padding(
                  //      padding: const EdgeInsets.only(bottom: 30),
                  //      child: Container(
                  //        width: 510,
                  //        height: 79,
                  //           child: StaggeredGridView.countBuilder(
                  //               scrollDirection: Axis.vertical,
                  //               staggeredTileBuilder: (int index)=>StaggeredTile.count(1,0.4),
                  //             crossAxisCount: 2,
                  //
                  //               mainAxisSpacing: 8,
                  //               itemCount: pitch!.length,
                  //               crossAxisSpacing: 0,
                  //               itemBuilder: (BuildContext context, int index,) {
                  //                 final _isSelected = _selectedIndexs.contains(
                  //                     index);
                  //                 PitchModel pitch;
                  //                 return Padding(
                  //                   padding: const EdgeInsets.only(
                  //                       left: 20, top: 15),
                  //                   child:
                  //                   InkWell(
                  //                     onTap: () {
                  //                       AppCubit.get(context).changeStyle(index);
                  //                     },
                  //                     child: Container(
                  //                       width: 200, height: 50,
                  //                       decoration: BoxDecoration(
                  //                         border: Border.all(
                  //                             width: 2, color:AppCubit.get(context).isClick ?Colors.red:Colors.blue,),
                  //                         borderRadius: BorderRadius.circular(
                  //                             4),),
                  //                       child: Card(
                  //                         elevation: 0,
                  //                         child: Container(
                  //                             child: Column(
                  //                               children: [
                  //                                 Padding(
                  //                                   padding: const EdgeInsets
                  //                                       .only(left: 8,
                  //                                       right: 148,
                  //                                       top: 8,
                  //                                       bottom: 8),
                  //                                   child: Text(
                  //                                     'ggggggg',
                  //                                     style: TextStyle(
                  //                                         fontSize: 15),),
                  //                                 ),
                  //                                 Row(
                  //                                   children: [
                  //                                     Container(
                  //                                       child: Column(
                  //                                         children: [
                  //                                           Row(
                  //
                  //                                             children: [
                  //                                               Padding(
                  //                                                 padding: const EdgeInsets
                  //                                                     .only(
                  //                                                     left: 8,
                  //                                                     right: 2),
                  //                                                 child: Container(
                  //                                                     width: 67,
                  //                                                     height: 26,
                  //                                                     color: mainGrey,
                  //                                                     child: Center(
                  //                                                         child: Text(
                  //                                                           'Football',
                  //                                                           style: TextStyle(
                  //                                                               fontSize: 15),))),
                  //                                               ),
                  //                                               Container(
                  //                                                   margin: const EdgeInsets
                  //                                                       .only(
                  //                                                       right: 2),
                  //                                                   width: 67,
                  //                                                   height: 26,
                  //                                                   color: mainGrey,
                  //                                                   child: Center(
                  //                                                       child: Text(
                  //                                                         'Volleyball',
                  //                                                         style: TextStyle(
                  //                                                             fontSize: 15),))),
                  //
                  //                                               Container(
                  //
                  //                                                   width: 67,
                  //                                                   height: 26,
                  //                                                   color: mainGrey,
                  //                                                   child: Center(
                  //                                                       child: Text(
                  //                                                         'Hockey',
                  //                                                         style: TextStyle(
                  //                                                             fontSize: 15),))),
                  //
                  //                                             ],
                  //
                  //                                           ),
                  //
                  //
                  //                                         ],
                  //                                       ),
                  //                                     )
                  //                                   ],),
                  //                               ],
                  //                             )
                  //                         ),
                  //                       ),
                  //                     ),
                  //                   ),
                  //                 );
                  //               }),
                  //
                  //          ),
                  //    ),
                  //  ),


              SingleChildScrollView(
                   scrollDirection: Axis.horizontal,

                   child: Padding(
                     padding: const EdgeInsets.only(right: 150,left: 20,top:11,bottom: 34),
                     child: Container(
                         width: 267,
                         height: 81,
                       child: GridView.builder(
                           padding: EdgeInsets.zero,
                         physics: NeverScrollableScrollPhysics(),
                           itemCount: 3,
                       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                         crossAxisCount: 3,
                         crossAxisSpacing: 12,
                         mainAxisSpacing: 3,

                           ), itemBuilder: (BuildContext context, int index)
                       =>buildSmallCard(index,),)),
                   )),

               Container(
                 padding: const EdgeInsets.only(right:301,left:20),
                 child: Text('Select Date',overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 16,fontFamily: 'Poppins'),),
               ),
               Padding(
                 padding: const EdgeInsets.only(
                   top:25,left:0,right:0,
                 ),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                      Container(
                         width: 30,

                         child: InkWell(

                             onTap: () => _controller.previousPage(),
                             child: Center(child: Icon(Icons.arrow_back_ios,color:mainGreen)) ),
                       ),
                 Padding(
                   padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                   child: Container(
                     width: 145,
                     height: 50,
                     child: CarouselSlider.builder(
                       carouselController: _controller,
                       itemCount: date_util.DateUtils.months.length,
                       itemBuilder: (BuildContext context, int index,int realIndex)=>Container(
                        width:140,
                         child: Center(
                           child: Text(
                             date_util.DateUtils.months[index]  ,

                             style: const TextStyle(
                                 color: Colors.black,fontFamily: 'Poppins', fontSize: 16),
                           ),
                         ),
                       ), options: CarouselOptions(
                       initialPage: currentDateTime.month - 1,
                     ),
                     ),
                   ),
                 ),
                      Container(
                         width: 30,
                         child: InkWell(

                             onTap: () => _controller.nextPage(),
                             child: Center(child: Icon(Icons.arrow_forward_ios,color:mainGreen)) ),
                       ),

                   ]),
               ),
               Container(
                margin:EdgeInsets.only(top:24,left:20,right: 20,bottom: 20),
                 width: 375,
                 height: 56,
                 child: ListView.builder(
                   padding: EdgeInsets.zero,
                   controller: scrollController,
                   scrollDirection: Axis.horizontal,
                   physics: const ClampingScrollPhysics(),
                   shrinkWrap: true,
                   itemCount: currentMonthList.length,
                   itemBuilder: (BuildContext context, int index) {
                     return  Padding(
                         padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                         child: GestureDetector(
                           onTap: () {
                             setState(() {
                               currentDateTime = currentMonthList[index];
                             });
                           },
                           child: Container(
                             width: 56,
                             height: 56,
                             decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(8),
                                 color: (currentMonthList[index].day != currentDateTime.day)? mainWhite: mainWhite,
                                 border: Border.all(width: 2,color: (currentMonthList[index].day!= currentDateTime.day)? mainGrey: mainGreen,)

                             ),


                             child: Center(
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: <Widget>[
                                   Text(
                                     currentMonthList[index].day.toString(),
                                     style: TextStyle(
                                         fontSize: 17,
                                         fontFamily: 'Poppins',
                                         color:
                                         (currentMonthList[index].day != currentDateTime.day)
                                             ? Color(0xff707070)
                                             : Colors.black),
                                   ),
                                   Text(
                                     date_util.DateUtils
                                         .weekdays[currentMonthList[index].weekday - 1],
                                     style: TextStyle(
                                         fontSize: 9,
                                         fontFamily: 'Poppins',
                                         color:
                                         (currentMonthList[index].day != currentDateTime.day)
                                             ? Color(0xff707070)
                                             : Colors.black),
                                   )],),),),
                         ));},
                 ),
               ),

               Container(
                 padding: const EdgeInsets.only(right:324,top:33,left: 20),
                 child: Text('Duration',overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 16,fontFamily: 'Poppins'),),
               ),

               Container(
                 height: 50,
                 width:400,
                 margin:EdgeInsets.only(left:20,top:16),
                 child: ListView.builder(
                   padding: EdgeInsets.zero,
                   scrollDirection: Axis.horizontal,
                   itemCount: 3,
                   itemBuilder: (BuildContext context, int index)=>
                       Padding(
                         padding: const EdgeInsets.only(right:10),
                         child: Container(
                           width:102,height:40,
                           decoration :BoxDecoration(
                             border:Border.all(width:1,color: mainGreen),
                             borderRadius: BorderRadius.circular(4),
                           ),
                           child:Row(
                             children: [
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Image.asset('assets/clock.png'),
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(top:5.0),
                                 child: Column(
                                   mainAxisAlignment: MainAxisAlignment.start,
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Text(duration[index],overflow: TextOverflow.ellipsis,maxLines:2,style: TextStyle(fontFamily:
                                     'Poppins',fontSize: 12,color: Color(0xff1D1D1B)),),
                                     Text('minutes',overflow: TextOverflow.ellipsis,maxLines:2,style: TextStyle(fontFamily:
                                     'Poppins',fontSize: 12,color: Color(0xff1D1D1B)),),
                                   ],
                                 ),
                               ),
                             ],
                           ),

                         ),
                       ),
                 ),
               ),   Container(
                 padding: const EdgeInsets.only(right:311,top:33,left: 20),
                 child: Text('Time Slots',overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 16,fontFamily: 'Poppins'),),
               ),

               Container(
                 height: 40,
                 width:256,
                 margin:EdgeInsets.only(left:20,top:16,right: 135),
                 child: ListView.builder(
                   padding: EdgeInsets.zero,
                   scrollDirection: Axis.horizontal,
                   itemCount: 3,
                   itemBuilder: (BuildContext context, int index)=>
                       Padding(
                         padding: const EdgeInsets.only(right:10),
                         child: Container(
                           width:77,height:40,
                           decoration :BoxDecoration(
                             border:Border.all(width:1,color: mainGreen),
                             borderRadius: BorderRadius.circular(4),
                           ),


                              child: Padding(
                                 padding: const EdgeInsets.only(top:5.0),
                                 child:
                                     Center(
                                       child: Text(slots[index],overflow: TextOverflow.ellipsis,maxLines:2,style: TextStyle(fontFamily:
                                       'Poppins',fontSize: 14,color: Color(0xff1D1D1B)),),
                                     ),


                               ),


                         ),
                       ),
                 ),
               ),
               InkWell(
                 onTap: (){},
                 child: Card(
                   elevation:2,
                   child: Container(color: Colors.white,
                     width: 382,height: 80,
                     margin: EdgeInsets.only(left: 16,right: 16,top: 38),
                     child: Row(
                       children: [
                         Column(children: [
                           Padding(
                             padding: const EdgeInsets.only(left:24,right:35,top:24),
                             child: Text('Amount',style: TextStyle(
                               fontFamily: 'Poppins',fontSize: 12,color: Color(0xff313133),
                             ),),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(left:24,),
                             child: Text('QAR 0.00',style: TextStyle(
                               fontFamily: 'Poppins',fontSize: 19,color: mainGreen,
                             ),),
                           ),
                         ],),

                         InkWell(
                           child: Container(
                             margin: EdgeInsets.only(left: 135,top: 17),
                             width: 122,height:41,
                             decoration: BoxDecoration(color:mainGreen,borderRadius: BorderRadius.circular(4),),
                            child:  Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment:CrossAxisAlignment.center,
                              children: [
                                Container(
                                      child: Text('Next',style: TextStyle(color:mainWhite,fontFamily: 'Poppins',fontSize: 16 ),)),

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset("assets/arrow.png",color: mainWhite,),
                                ),
                              ],
                            ),
                           ),
                         ),



                       ],

                     ),

                   ),
                 ),
               ),
               SizedBox(height:20),


             ],
             ),





            )  ]),


        ]

    ))

    )));
  }

  Widget buildSmallCard(int index)=>Container(
    height: 73,width: 82,
    padding: const EdgeInsets.only(top:0),
    decoration: BoxDecoration(border: Border.all(width:2,color: mainGreen),borderRadius: BorderRadius.circular(4)),
        child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Padding(
            padding: const EdgeInsets.all(0),
            child: Image.asset('assets/secondfootball.png',width: 27,height: 27,),
          ),
            Center(child: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text('Football',style: TextStyle(fontSize: 13),),
            )),
        ],),
      ),);


}















