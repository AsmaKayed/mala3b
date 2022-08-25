
import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:untitled/layouts/bookingSummary.dart';
import 'package:untitled/layouts/try.dart';
import '../../appModels/appModels.dart';
import '../../cubit/cubit.dart';
import '../../cubit/states.dart';
import '../../reausable components/reusable components.dart';
import '../../layouts/date.dart' as date_util;

class FirstVenuePage extends StatefulWidget {

  @override
  State<FirstVenuePage> createState() => _FirstVenuePageState();
}

class _FirstVenuePageState extends State<FirstVenuePage>with SingleTickerProviderStateMixin  {
  final CarouselController _controller = CarouselController();
  double width = 0.0;
  double height = 0.0;
  late ScrollController scrollController;
  List<DateTime> currentMonthList = List.empty();
  DateTime currentDateTime = DateTime.now();
  List<String> todos = <String>[];
  List<int> venue=[0,1];
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
  bool? isSelected=true;
  @override
  void initState() {

    currentMonthList = date_util.DateUtils.daysInMonth(currentDateTime);
    currentMonthList.sort((a, b) => a.day.compareTo(b.day));
    currentMonthList = currentMonthList.toSet().toList();
    scrollController =
        ScrollController(initialScrollOffset: 70.0 * currentDateTime.day);
    tabController=TabController(length: 4, vsync: this);
    tabController!.addListener(_handleTabSelection);
    super.initState();
  }

  TabController? tabController;


  void _handleTabSelection() {
    setState(() {
    });
  }
  List<PitchModel>? pitch=[
    PitchModel(size: '5x5 pitch', name: 'football', image: Image.asset('assets/secondfootball.png' ,),),
    PitchModel(size: '6x6 pitch', name: 'volleyball', image:Image.asset('assets/secondbasketball.png'),),
  ];

  final List<Map> data = List.generate(2,
          (index) => {'id': index, 'isSelected': false}

  );
  int selectedIndex = -1;
  int selectedIndexDate = -1;
  int secondSelectedIndex = -1;
  int thirdSelectedIndex = -1;
  int forthSelectedIndex = -1;
  @override
  Widget build(BuildContext context) {


    bool viewObject=true;

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
        InkWell(
          onTap: (){
            Navigator.pop(context, MaterialPageRoute(builder: (context)=>HomeLayout()));
          },
          child: Container(
          alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 43,left: 16,),
              child: Icon(Icons.arrow_back_outlined,color: mainGreen,size: 30,)),
        ),
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
                   padding: EdgeInsets.only(left: 20,top: 46),
                   child: Text('WESTBAY , Doha, Qatar',style: TextStyle(fontSize: 12,fontFamily: 'Poppins',fontWeight: FontWeight.w100),),
                 ),

                 Padding(
                   padding: const EdgeInsets.only(left: 200,top: 50),
                   child: Image.asset('assets/loc.png',width: 25,height: 25,),
                 ),

               ],),
               Container(
                 alignment: Alignment.topLeft,
                 padding: const EdgeInsets.only(left: 20),
                 child: Text('Select Pitch',overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 16,fontFamily: 'Poppins'),),
               ),
               SingleChildScrollView(
                 scrollDirection: Axis.horizontal,
                 child: Row(children:[
                   Container(
                     height:78,
                     child: ListView.builder(
                         padding: EdgeInsets.zero,
                         controller: scrollController,
                         scrollDirection: Axis.horizontal,
                         physics: const ClampingScrollPhysics(),
                         shrinkWrap: true,
                         itemCount: 2,
                       itemBuilder: (BuildContext context, int index) {
                        return Stack(
                           children: [Padding(
                             padding: const EdgeInsets.only(top: 13,left: 20),
                             child: InkWell(
                               onTap: () => setState(() => selectedIndex=index),
                               child: Container(

                                 width: 227,height: 73,
                                 decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(4),
                                     border: Border.all(color: (selectedIndex==index)? mainGreen:mainGrey,width: 2)
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
                                                     color: (selectedIndex==index)? null:Color(0xffB4BFC5),
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
                                                                         color: (selectedIndex==index)? null:Color(0xffB4BFC5),
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
                                                                         color: (selectedIndex==index)? null:Color(0xffB4BFC5),
                                                                         fontSize: 13),))),

                                                           Container(

                                                               width: 67,
                                                               height: 26,
                                                               color: mainGrey,
                                                               child: Center(
                                                                   child: Text(
                                                                     'Hockey',
                                                                     style: TextStyle(
                                                                       color: (selectedIndex==index)? null:Color(0xffB4BFC5),
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
                               child:  (selectedIndex==index)?Container(

                                 width: 18,height: 18,
                                 decoration: BoxDecoration(shape: BoxShape.circle,color: mainGreen),
                                 child:Icon(Icons.check,color: mainWhite,size: 16,),
                               ):null,),
                           ]
                       );}
                     ),
                   ),

              ]
                 ),
               ),


             Padding(
                     padding: const EdgeInsets.only(right: 130,left: 20,top:11,bottom: 34),
                     child: Container(
                       width: 270,
                       height: 68,
                       child: ListView.builder(
                           padding: EdgeInsets.zero,
                           itemCount: 3,
                     scrollDirection: Axis.horizontal,
                     itemBuilder: (BuildContext context, int index)
                       =>InkWell(
                         onTap: ()=>setState(() => secondSelectedIndex=index),
                         child: Container(
                           height: 73,width: 82,
                           margin: const EdgeInsets.only(right:8),
                           decoration: BoxDecoration(border: Border.all(width:2,color: (secondSelectedIndex==index)?mainGreen:mainGrey),borderRadius: BorderRadius.circular(4)),
                           child: Center(
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                               crossAxisAlignment: CrossAxisAlignment.center,
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.all(0),
                                   child: Image.asset('assets/secondfootball.png',color:(secondSelectedIndex==index)?null:Color(0xffB4BFC5),width: 27,height: 27,),
                                 ),
                                 Center(child: Padding(
                                   padding: const EdgeInsets.only(top: 5),
                                   child: Text('Football',style: TextStyle(fontSize: 13,color:(secondSelectedIndex==index)?null:Color(0xffB4BFC5)),),
                                 )),
                               ],),
                           ),),
                       )),
                     ),
                   ),

               Container(
                 alignment: Alignment.topLeft,
                 padding: const EdgeInsets.only(left: 20),
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
                margin:EdgeInsets.only(top:20,left:20,right: 20,bottom: 20),
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
                           child: Stack(
                             children:[ Container(
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

                               Padding(
                                 padding: const EdgeInsets.all(0.0),
                                 child:  (currentMonthList[index].day != currentDateTime.day)?null:Container(
                                     margin: const EdgeInsets.only(left:42,bottom: 40, ),
                             width: 18,height: 18,
                             decoration: BoxDecoration(shape: BoxShape.circle,color: mainGreen),
                             child:Icon(Icons.check,color: mainWhite,size: 16,),
                           ),
                               ),
                          ] ),
                         ));},
                 ),
               ),

               Container(
                 alignment: Alignment.topLeft,
                 padding: const EdgeInsets.only(left: 20),
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
                         child: InkWell(
                           onTap: ()=>setState(()=>thirdSelectedIndex=index),
                           child: Container(
                             width:102,height:40,
                             decoration :BoxDecoration(
                               border:Border.all(width:1,color: (thirdSelectedIndex==index)?mainGreen:mainGrey ),
                               borderRadius: BorderRadius.circular(4),
                             ),
                             child:Row(
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Image.asset('assets/clock.png',color: (thirdSelectedIndex==index)? null:Color(0xffB4BFC5),),
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.only(top:5.0),
                                   child: Column(
                                     mainAxisAlignment: MainAxisAlignment.start,
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text(duration[index],overflow: TextOverflow.ellipsis,maxLines:2,style: TextStyle(fontFamily:
                                       'Poppins',fontSize: 12,color: (thirdSelectedIndex==index)? null:Color(0xffB4BFC5),),),
                                       Text('minutes',overflow: TextOverflow.ellipsis,maxLines:2,style: TextStyle(fontFamily:
                                       'Poppins',fontSize: 12,color:(thirdSelectedIndex==index)? null:Color(0xffB4BFC5),),),
                                     ],
                                   ),
                                 ),
                               ],
                             ),

                           ),
                         ),
                       ),
                 ),
               ),
               SizedBox(height: 30,),
               Container(
                 alignment: Alignment.topLeft,
                 padding: const EdgeInsets.only(left: 20),
                 child: Text('Time Slots',overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 16,fontFamily: 'Poppins'),),
               ),
               SizedBox(height: 9,),

               Container(
                 height: 40,
                 width:270,
                 margin:EdgeInsets.only(left:20,right: 120),
                 child: ListView.builder(
                   padding: EdgeInsets.zero,
                   scrollDirection: Axis.horizontal,
                   itemCount: 3,
                   itemBuilder: (BuildContext context, int index)=>
                       Padding(
                         padding: const EdgeInsets.only(right:10),
                         child: Stack(
                           children:[ InkWell(
                             onTap: ()=>setState(()=>forthSelectedIndex=index),
                             child: Container(
                               width:77,height:40,
                               decoration :BoxDecoration(
                                 border:Border.all(width:1,color:(forthSelectedIndex==index)?mainGreen: mainGrey),
                                 borderRadius: BorderRadius.circular(4),
                               ),


                                  child: Padding(
                                     padding: const EdgeInsets.only(top:5.0),
                                     child:
                                         Center(
                                           child: Text(slots[index],overflow: TextOverflow.ellipsis,maxLines:2,style: TextStyle(fontFamily:
                                           'Poppins',fontSize: 14,color:(forthSelectedIndex==index)? null:Color(0xffB4BFC5),),),
                                         ),


                                   ),


                             ),
                           ),
                             Padding(
                               padding: const EdgeInsets.only(left:0,bottom: 0, ),
                               child:  (forthSelectedIndex==index)?Container(
                                 margin: const EdgeInsets.only(left:65,bottom: 10, ),
                                 width: 18,height: 18,
                                 decoration: BoxDecoration(shape: BoxShape.circle,color: mainGreen),
                                 child:Icon(Icons.check,color: mainWhite,size: 16,),
                               ):null,
                             ),
                        ] ),
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
                           onTap: (){ SchedulerBinding.instance.addPostFrameCallback((_) {

                             // add your code here.

                             bottomSheet(context);
                           });},
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



  bottomSheet(context){
    showModalBottomSheet(context: context,
      shape: const RoundedRectangleBorder( // <-- SEE HERE
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16.0),
        ),
      ),
      builder: (BuildContext c)
      {
        return BlocProvider(
            create: (BuildContext context)=>AppCubit(),

            child: BlocConsumer<AppCubit,AppStates>(
                listener: (BuildContext context,AppStates){},
                builder: (BuildContext context,AppStates)
                => SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                      height: 554, width: 414,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft:Radius.circular(16),topRight:Radius.circular(16)), color: mainWhite,),
                      child: Column(
                          children:[
                            InkWell(
                              onTap: (){ Navigator.of(context).pop();},
                              child: Padding(
                                padding: const EdgeInsets.only(left: 350,top: 30),
                                child: Text('Skip',style: TextStyle(fontFamily: 'Popppins',fontSize: 16,color: Colors.black),),
                              ),
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(top:20 ),
                                child: TabBar(
                                    controller: tabController,
                                    labelColor: Colors.black,
                                    indicatorWeight: 4,
                                    indicatorSize: TabBarIndicatorSize.label,

                                    indicatorColor: Color(0XFF79B62D),
                                    unselectedLabelColor:Color(0XFF707070),
                                    isScrollable: true,
                                    labelStyle:TextStyle(fontFamily: 'Poppins',fontSize: 15,) ,
                                    tabs:[
                                      Tab(text:"Energy Drinks", ),
                                      Tab(text: 'CoolBar',),
                                      Tab(text:"Coffee", ),
                                      Tab(text: 'Snacks',),
                                    ]
                                ),
                              ),
                            ),
                            SizedBox(height: 18,),
                            Container(
                              height: 400,width: 382,
                              child: TabBarView(
                                  controller: tabController,
                                  children: [
                                    Column(children: [
                                      Container(
                                        width:366,height: 72,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(4),
                                            border: Border.all(color:Color(0xffF1F2F2),width: 1)
                                        ),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(left:11,right: 28,top: 8,bottom: 8),
                                              child: Image.asset('assets/redbull.png'),
                                            ),
                                            Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 15,),
                                                  child: Text('Red Bull',style: TextStyle(fontSize: 14,fontFamily: 'Poppins',color: Colors.black),),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(bottom: 0, ),
                                                  child: Text('600 ml Can',style: TextStyle(fontSize: 12,fontFamily: 'Poppins',color: Color(0xff707070)),),
                                                ),

                                              ],
                                            ),
                                            InkWell(
                                              onTap: (){
                                                AppCubit.get(context).firstchangeStyle();
                                              },
                                              child: AppCubit.get(context).firstisClick? Padding(
                                                padding: const EdgeInsets.only(left: 110),
                                                child: Container(
                                                  width: 75,height: 25,
                                                  color: Colors.white,
                                                  child:  Container(
                                                    child: Row(
                                                      children: [
                                                        InkWell(
                                                          onTap: (){AppCubit.get(context).firstMinus();},
                                                          child: Container(
                                                              height: 25,width: 25,
                                                              child:Image.asset('assets/minus.png',height: 16,width: 16,)
                                                          ),
                                                        ),
                                                        Container(
                                                          child: Center(child: Text('${AppCubit.get(context).counter}')),
                                                          height: 24,width: 24,
                                                          decoration: BoxDecoration(color:Colors.white,border: Border.all(width: 1,color: Colors.black)),

                                                        ),
                                                        InkWell(
                                                          onTap: (){AppCubit.get(context).firstPlus();},
                                                          child: Container(
                                                              decoration: BoxDecoration(border: Border.all(color: Colors.black,)),
                                                              height: 24,width: 24,
                                                              child:Icon(Icons.add,size: 18)
                                                          ),
                                                        ),

                                                      ],
                                                    ),
                                                  ),),
                                              )
                                                  :  Padding(
                                                padding: const EdgeInsets.only(left: 110),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(4),
                                                    color: Color(0XFF313133),
                                                  ),
                                                  width: 72,height: 32,
                                                  child: Center(child: Text('ADD',style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),)),
                                                ),
                                              ),
                                            )



                                          ],
                                        ),
                                      ),
                                      Container(
                                        width:366,height: 72,
                                        margin: EdgeInsets.only(top: 12),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(4),
                                            border: Border.all(color:Color(0xffF1F2F2),width: 1)
                                        ),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(left:11,right: 28,top: 8,bottom: 8),
                                              child: Image.asset('assets/getorade.png'),
                                            ),
                                            Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 15,),
                                                  child: Text('Getorade',style: TextStyle(fontSize: 14,fontFamily: 'Poppins',color: Colors.black),),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(bottom: 0, ),
                                                  child: Text('600 ml Can',style: TextStyle(fontSize: 12,fontFamily: 'Poppins',color: Color(0xff707070)),),
                                                ),

                                              ],
                                            ),
                                            InkWell(
                                              onTap: (){
                                                AppCubit.get(context).secondchangeStyle();
                                              },
                                              child: AppCubit.get(context).secondisClick? Padding(
                                                padding: const EdgeInsets.only(left: 110),
                                                child: Container(
                                                  width: 75,height: 25,
                                                  color: Colors.white,
                                                  child:  Container(
                                                    child: Row(
                                                      children: [
                                                        InkWell(
                                                          onTap: (){AppCubit.get(context).secondMinus();},
                                                          child: Container(
                                                              height: 25,width: 25,
                                                              child:Image.asset('assets/minus.png',height: 16,width: 16,)
                                                          ),
                                                        ),
                                                        Container(
                                                          child: Center(child: Text('${AppCubit.get(context).secondcounter}')),
                                                          height: 24,width: 24,
                                                          decoration: BoxDecoration(color:Colors.white,border: Border.all(width: 1,color: Colors.black)),

                                                        ),
                                                        InkWell(
                                                          onTap: (){AppCubit.get(context).secondPlus();},
                                                          child: Container(
                                                              decoration: BoxDecoration(border: Border.all(color: Colors.black,)),
                                                              height: 24,width: 24,
                                                              child:Icon(Icons.add,size: 18)
                                                          ),
                                                        ),

                                                      ],
                                                    ),
                                                  ),),
                                              )
                                                  :  Padding(
                                                padding: const EdgeInsets.only(left: 110),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(4),
                                                    color: Color(0XFF313133),
                                                  ),
                                                  width: 72,height: 32,
                                                  child: Center(child: Text('ADD',style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),)),
                                                ),
                                              ),
                                            )



                                          ],
                                        ),
                                      ),
                                      Container(
                                        width:366,height: 72,
                                        margin: EdgeInsets.only(top: 12),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(4),
                                            border: Border.all(color:Color(0xffF1F2F2),width: 1)
                                        ),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(left:11,right: 28,top: 8,bottom: 8),
                                              child: Image.asset('assets/monster.png'),
                                            ),
                                            Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 15,),
                                                  child: Text('Monster',style: TextStyle(fontSize: 14,fontFamily: 'Poppins',color: Colors.black),),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(bottom: 0, ),
                                                  child: Text('600 ml Can',style: TextStyle(fontSize: 12,fontFamily: 'Poppins',color: Color(0xff707070)),),
                                                ),

                                              ],
                                            ),
                                            InkWell(
                                              onTap: (){
                                                AppCubit.get(context).thirdchangeStyle();
                                              },
                                              child: AppCubit.get(context).thirdisClick? Padding(
                                                padding: const EdgeInsets.only(left: 110),
                                                child: Container(
                                                  width: 75,height: 25,
                                                  color: Colors.white,
                                                  child:  Container(
                                                    child: Row(
                                                      children: [
                                                        InkWell(
                                                          onTap: (){AppCubit.get(context).thirdMinus();},
                                                          child: Container(
                                                              height: 25,width: 25,
                                                              child:Image.asset('assets/minus.png',height: 16,width: 16,)
                                                          ),
                                                        ),
                                                        Container(
                                                          child: Center(child: Text('${AppCubit.get(context).thirdcounter}')),
                                                          height: 24,width: 24,
                                                          decoration: BoxDecoration(color:Colors.white,border: Border.all(width: 1,color: Colors.black)),

                                                        ),
                                                        InkWell(
                                                          onTap: (){AppCubit.get(context).thirdPlus();},
                                                          child: Container(
                                                              decoration: BoxDecoration(border: Border.all(color: Colors.black,)),
                                                              height: 24,width: 24,
                                                              child:Icon(Icons.add,size: 18)
                                                          ),
                                                        ),

                                                      ],
                                                    ),
                                                  ),),
                                              )
                                                  :  Padding(
                                                padding: const EdgeInsets.only(left: 110),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(4),
                                                    color: Color(0XFF313133),
                                                  ),
                                                  width: 72,height: 32,
                                                  child: Center(child: Text('ADD',style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),)),
                                                ),
                                              ),
                                            ),



                                          ],
                                        ),
                                      ),
                                      InkWell(
                                        onTap: (){},
                                        child: Card(
                                          elevation: 2,
                                          child: Container(color: Colors.white,
                                            width: 382,height: 80,
                                            margin: EdgeInsets.only(left: 16,right: 16,top: 65),
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
                                                    child: Text('${AppCubit.get(context).counter+AppCubit.get(context).secondcounter+AppCubit.get(context).thirdcounter}.00 QAR',style: TextStyle(
                                                      fontFamily: 'Poppins',fontSize: 19,color: mainGreen,
                                                    ),),
                                                  ),
                                                ],),

                                                InkWell(
                                                  onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>BookingSummary()));},
                                                  child: Container(
                                                    child: Padding(
                                                      padding: const EdgeInsets.only(top: 8.0),
                                                      child: Row(
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 160,right: 5),
                                                            child: Text('Next',style: TextStyle(color:mainGreen,fontFamily: 'Poppins',fontSize: 16 ),),
                                                          ),
                                                          Image.asset("assets/arrow.png",color: mainGreen,),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),



                                              ],

                                            ),

                                          ),
                                        ),
                                      )



                                    ],),
                                    Container(color: mainGrey,),
                                    Container(color: mainGrey,),
                                    Container(color: mainGrey,),
                                  ]
                              ),),

                          ])
                  ),
                )));

      },

    );}
}















