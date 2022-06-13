import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/cubit.dart';
import '../cubit/states.dart';
import '../reausable components/reusable components.dart';

class BookingSummary extends StatefulWidget {

  @override
  State<BookingSummary> createState() => _BookingSummaryState();
}

class _BookingSummaryState extends State<BookingSummary>with SingleTickerProviderStateMixin {
  TabController? tabController;
  void  initState(){

    tabController=TabController(length: 4, vsync: this);
    tabController!.addListener(_handleTabSelection);
    super.initState();
  }

  void _handleTabSelection() {
    setState(() {
    });
  }
  @override


  Widget build(BuildContext context) {
    return  Scaffold(

    backgroundColor: mainGrey,
    body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(children: [
        Padding(
        padding: const EdgeInsets.only(top: 42,bottom: 35),
            child: Row(children: [
         Padding(
            padding: const EdgeInsets.only(left: 16,right: 80,),
             child: Image.asset('assets/backArrow.png',width: 25,height: 25,),
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
                width: 238,height: 40,
                decoration: BoxDecoration(
                  color: Color(0xfffafafa),
                  borderRadius: BorderRadius.circular(4),
                ),
                margin: EdgeInsets.only(top: 30,left: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    label: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Enter Voucher Code',style: TextStyle(fontSize:14,fontFamily: 'Poppins' ,color: Color(0xff707070)),),
                    )
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30,),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),color: Color(0xff313133)),
                width: 120,height: 40,
                child: MaterialButton(onPressed: (){},
                      child: Center(child: Text('APPLY CODE',style: TextStyle(fontSize:14,fontFamily: 'Poppins' ,color:mainWhite),)),
                ),
              )
              ],),
              Container(
                margin: EdgeInsets.only(top: 15,left: 25,right: 25),
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
                  Container(
                    width: 18,height: 18,
                    decoration: BoxDecoration(shape: BoxShape.circle,color: mainGreen),
                    child:Icon(Icons.check,color: mainWhite,size: 16,),
                  ),

                ],),
              ),
              Container(
                margin: EdgeInsets.only(top: 15,left: 25,right: 25),
                width: 333,height: 34,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: Color(0xffF1F2F2),width: 1)
                ),
                child: Row(children: [
                  Container(
                      margin: EdgeInsets.only(left: 16,),
                      child: Image.asset('assets/wallet.png',height: 20,width: 20,)),
                  Container(
                      margin: EdgeInsets.only(left: 9,right: 137),
                      child: Text('Pay with your wallet')),


                ],),
              ),

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
              onPressed: (){_bottomSheet(context);},
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

  _bottomSheet(context){
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
            Padding(
              padding: const EdgeInsets.only(left: 350,top: 30),
              child: Text('Skip',style: TextStyle(fontFamily: 'Popppins',fontSize: 16,color: Colors.black),),
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
                                                onTap: (){AppCubit.get(context).thirdchangeStyle();},
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
                                         child: Text('5.00 QAR',style: TextStyle(
                                           fontFamily: 'Poppins',fontSize: 19,color: mainGreen,
                                         ),),
                                       ),
                                     ],),

                                        Padding(
                                          padding: const EdgeInsets.only(left: 165,right: 5),
                                          child: Text('Next',style: TextStyle(color:mainGreen,fontFamily: 'Poppins',fontSize: 16 ),),
                                        ),
                                     Image.asset("assets/arrow.png",color: mainGreen,),


                                   ],

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
