
import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:carousel_slider/carousel_slider.dart';
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

  double width = 0.0;
  double height = 0.0;
  late ScrollController scrollController;
  List<DateTime> currentMonthList = List.empty();
  DateTime currentDateTime = DateTime.now();
  List<String> todos = <String>[];
  TextEditingController controller = TextEditingController();

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
              width: 414,height: 857,
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
               const Padding(
                 padding: EdgeInsets.only(left: 24,top: 39,right:292 ),
                 child: Text('Select pitch',style: TextStyle(fontSize: 16,fontFamily: 'Poppins',),),
               ),
               SingleChildScrollView(
                 scrollDirection: Axis.horizontal,
                 child: Row(children:[
                   Stack(
                       children: [Padding(
                         padding: const EdgeInsets.only(top: 32,left: 20),
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
                           padding: const EdgeInsets.only(left:234,top: 25, ),
                           child: AppCubit.get(context).venueFirst?Container(

                             width: 18,height: 18,
                             decoration: BoxDecoration(shape: BoxShape.circle,color: mainGreen),
                             child:Icon(Icons.check,color: mainWhite,size: 16,),
                           ):null,)
                       ]
                   ),
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
                     padding: const EdgeInsets.only(right: 150,left: 20,bottom: 60),
                     child: Container(
                       width: 267,
                       height: 73,
                       child: GridView.builder(
                           itemCount: 3, 
                       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                         crossAxisCount: 3,

                         mainAxisSpacing: 10,

                         crossAxisSpacing: 12,

                           ), itemBuilder: (BuildContext context, int index)
                       =>buildSmallCard(index,),)),
                   )),
               Padding(
                 padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                 child: Container(
                   color: Colors.red,
                   width: 400,
                   height: 50,
                   child: CarouselSlider.builder(
                     itemCount: date_util.DateUtils.months.length,
                     itemBuilder: (BuildContext context, int index,int realIndex)=>Card(
                       child: Text(
                         date_util.DateUtils.months[index]  +
                             ' ' +
                             currentDateTime.year.toString(),
                         style: const TextStyle(
                             color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
                       ),
                     ), options: CarouselOptions(height: 100,
                     initialPage: currentDateTime.month - 1,
                   ),
                   ),
                 ),
               ),
               Container(
                 width: width,
                 height: 56,
                 child: ListView.builder(
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
                                 border: Border.all(width: 2,color: (currentMonthList[index].day!= currentDateTime.day)? mainWhite: mainGreen,)

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

             ],
             ),





            )  ]),


        ]

    ))

    )));
  }

  Widget buildSmallCard(int index)=>Container(
    padding: const EdgeInsets.only(left: 0,top: 0),
    width: 20,height: 20,
    decoration: BoxDecoration(border: Border.all(width:2,color: mainGreen),borderRadius: BorderRadius.circular(4)),
    child: Card(
      elevation: 0,

      child: Container(
        margin: EdgeInsets.only(right: 10,left: 10),
        child: Center(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/secondfootball.png',width: 27,height: 27,),
          ),
            Center(child: Text('Football',style: TextStyle(fontSize: 13),)),
        ],),
      ),),
    ),
  );
}















