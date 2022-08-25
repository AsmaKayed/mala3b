import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/cubit/cubit.dart';
import 'package:untitled/modules/venue/venueFirst.dart';
import 'package:untitled/reausable%20components/reusable%20components.dart';

import '../../cubit/states.dart';
import '../../layouts/notifications.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{

     TabController? tabController;

  @override
 void  initState(){

     tabController=TabController(length: 2, vsync: this);
     tabController!.addListener(_handleTabSelection);
     super.initState();
  }


    void _handleTabSelection() {
      setState(() {
      });
    }
  @override

  List<String> categories=[
        'Football',
         'Basketball',
    'Badminton',
    'Cricket'
     ];
     final List<Map> data = List.generate(5,
             (index) => {'id': index, 'isSelected': false}

     );
     int selectedIndex = -1;
     int venueSelectedIndex = -1;
  Widget build(BuildContext context) {
    var searchController=TextEditingController();
    Size size=MediaQuery.of(context).size;



    return BlocProvider(
      create: (BuildContext context)=>AppCubit(),

      child: BlocConsumer<AppCubit,AppStates>(
          listener: (BuildContext context,AppStates){},
          builder: (BuildContext context,AppStates)
          =>Scaffold(
      backgroundColor: Color(0XFF52A650),
      body:
      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 140,top: 48,),
                    child: Image.asset('assets/malaeb.png',width:130 ,height: 27,),
                  ),
                  SizedBox(width: 104,),
                  Expanded(
                    child: InkWell(
                      onTap: (){  Navigator.push(context, MaterialPageRoute(builder: (context)=>Notifications()));},
                      child: Padding(
                        padding: const EdgeInsets.only(top: 48,right: 16),
                        child: const Icon(Icons.notifications_none,color: Colors.white,),
                      ),
                    ),
                  ),
                ],
              ),
            SizedBox(height: 31),
              Padding(
                padding: const EdgeInsets.only(right: 16,left: 16,),
                child: Container(
                height: 48,width: 382,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(4),
                     color: Colors.green.shade200,
                   ),
                  child: TextFormField(
                    controller: searchController,
                    decoration: InputDecoration(
                      border: InputBorder.none,

                      prefixIcon: Icon(Icons.search),
                      label: Text('Search'),
                    ),
                  ),
                ),
              ),

              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Stack(

                  children:[
                    Padding(
                      padding: const EdgeInsets.only(top:15 ),
                      child: Container(color: Colors.white,
                      width: size.width,
                        height:2000,
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CarouselSlider(

                          items: [
                            Container

                              (
                                width: 700,
                                alignment: Alignment.topCenter,
                                margin: EdgeInsets.only(top: 15),
                                child: Image.asset('assets/edited.png',)),

                  ], options: CarouselOptions(

                          height: 158,
                          autoPlay: true,
            viewportFraction:0.8 ,
                          autoPlayAnimationDuration: Duration(microseconds: 10),
                          aspectRatio: 0,
                  ), ),


                      Container(
                        margin: EdgeInsets.only(top: 28,bottom: 10,left: 16),

                        alignment: Alignment.topLeft,
                        height: 40,width: 402,
                        child: ListView.separated(separatorBuilder: (context,index)=>SizedBox(width: 10,), itemCount:categories.length,
                  itemBuilder: (BuildContext context, int index)
                          => InkWell(
                            onTap: (){
                              setState(() {
                                data[index]['isSelected'] = !data[index]['isSelected'];
                              });
                            },
                            child: Container(
                              width: 115,height: 40,
                              decoration: BoxDecoration(

                                  color:data[index]['isSelected'] == true
                                      ?Color(0xff313133)
                                      : mainGrey,borderRadius: BorderRadius.circular(4)),
                              child: Center(child: Text(categories[index],style: TextStyle(color: data[index]['isSelected'] == true?mainWhite:Color(0xffA5B2B9)),)),
                            ),
                          ),
                           scrollDirection: Axis.horizontal,
                            ),
                      ),

                      Container(

                        alignment: Alignment.topLeft,
                        child: TabBar(
                          controller: tabController,
                            labelColor: Colors.black,
                            indicatorWeight: 4,
                            indicatorPadding: EdgeInsets.only(left: 63,right: 63,bottom: 10),
                            indicatorColor: Color(0XFF79B62D),
                            unselectedLabelColor:Color(0XFF79B62D),
                            isScrollable: true,
                            labelStyle:TextStyle(fontFamily: 'Poppins',fontSize: 15,) ,
                            tabs:[
                            Tab(text:"Venue near me", ),
                          Tab(text: 'Recommended',),]
                        ),
                      ),

                        Container(
                          margin: const EdgeInsets.only(top: 10,),
                          height: MediaQuery.of(context).size.height,width: 382,
                          child: TabBarView(
                              controller: tabController,
                              children: [

                            Padding(
                              padding: const EdgeInsets.only(bottom: 0,),
                              child: ListView.builder(
                                  itemCount: 2,
                                  itemBuilder: (_,index)
                              {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: ()=> setState(() => venueSelectedIndex=index),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Stack(
                                          children:[InkWell(

                                            onTap:(){

                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>FirstVenuePage()));},
                                            child: Container(
                                              height: 144,
                                              width: 382,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(24),
                                                image: DecorationImage(
                                                  image: AssetImage('assets/slide.png'),

                                                )
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 107,left: 4,right: 3),
                                            child: Opacity(

                                              opacity: 0.6,
                                              child: Stack(
                                                children: [
                                                 Container(
                                                  width: 385,
                                                  alignment: Alignment.bottomCenter,
                                                  height: 37,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16),bottomRight:Radius.circular(16) ),
                                                    color: Color(0XFF79B62D),

                                                  ),
                                                ),
                                                  Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: Text('Avaliable in 72 hrs',style: TextStyle(fontSize: 12,color: mainWhite,fontFamily: 'Poppins',),)
                                                  )],),),),]),
                                        Row(
                                          children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: const [
                                              Text("Stamford Bridge",style: TextStyle(fontSize: 15, fontFamily: 'Poppins'),),
                                              Text("WESTBAY ,Doha,Qatar",style: TextStyle(fontSize: 10,fontFamily: 'Poppins',fontWeight: FontWeight.w100),)
                                            ],),
                                          ),
                                            SizedBox(width: 87,),
                                            Container(

                                              height:33,width:119,
                                              child: ListView.builder(
                                                scrollDirection: Axis.horizontal,
                                                itemCount:3,
                                                itemBuilder: (BuildContext context, int index) => Padding(
                                                  padding: const EdgeInsets.only(left: 5,),
                                                  child: InkWell(
                                                    onTap:()=> setState(() => selectedIndex=index),
                                                    child: Container(

                                                      child:  Padding(
                                                        padding: const EdgeInsets.only(top: 3),
                                                        child: Column( children:[ Image.asset('assets/football.png',width:20 ,height: 20,color:( selectedIndex==index)?mainWhite:Colors.black),
                                                          Text("football",style: TextStyle(fontSize: 6,color:( selectedIndex==index)?mainWhite:Colors.black),)

                                                        ]),
                                                      ),
                                                      height: 33,width: 33,
                                                      decoration: BoxDecoration(color:(selectedIndex==index)?mainGreen:mainWhite,border:Border.all(width: 0.7,color: Colors.grey),borderRadius: BorderRadius.circular(4)),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),



                                        ],)
                                      ],
                                    ),
                                  ),
                                );
                              }),
                            ),
                                ListView.builder(
                                    itemCount: 2,
                                    itemBuilder: (_,index)
                                    {
                                      return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Stack(
                                                children:[Container(
                                                  height: 144,
                                                  width: 382,
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(24),
                                                      image: DecorationImage(
                                                        image: AssetImage('assets/slide.png'),

                                                      )
                                                  ),
                                                ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 107,left: 4,right: 3),
                                                    child: Opacity(

                                                      opacity: 0.6,
                                                      child: Stack(
                                                        children: [
                                                          Container(
                                                            width: 385,
                                                            alignment: Alignment.bottomCenter,
                                                            height: 37,
                                                            decoration: BoxDecoration(
                                                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16),bottomRight:Radius.circular(16) ),
                                                              color: Color(0XFF79B62D),

                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.all(8.0),
                                                            child: Text('Avaliable in 72 hrs',style: TextStyle(fontSize: 12,color: Colors.white,fontFamily: 'Poppins'),),
                                                          )],),),),]),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    children: const [
                                                      Text("Stamford Bridge",style: TextStyle(fontSize: 15, fontFamily: 'Poppins'),),
                                                      Text("WESTBAY ,Doha,Qatar",style: TextStyle(fontSize: 10,fontFamily: 'Poppins',fontWeight: FontWeight.w100),)
                                                    ],),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 100,right: 8,top: 8,bottom: 8),
                                                  child: Container(

                                                    child:  Padding(
                                                      padding: const EdgeInsets.only(top: 3),
                                                      child: Column( children:[ Image.asset('assets/football.png',width:20 ,height: 20,),
                                                        Text("football",style: TextStyle(fontSize: 6,color: Colors.white),)

                                                      ]),
                                                    ),
                                                    height: 33,width: 33,
                                                    decoration: BoxDecoration(color: Color(0XFF79B62D),border:Border.all(width: 0.7,color: Colors.grey),borderRadius: BorderRadius.circular(4)),
                                                  ),
                                                ),


                                                Padding(
                                                  padding: const EdgeInsets.all(0),
                                                  child: Container(
                                                    child:  Padding(
                                                      padding: const EdgeInsets.only(top: 2),
                                                      child: Column( children:[ Image.asset('assets/basketball.png',width:20 ,height: 20,),
                                                        Text("Basketball",style: TextStyle(fontSize: 6),)

                                                      ]),
                                                    ),
                                                    height: 33,width: 33,
                                                    decoration: BoxDecoration(color: Colors.white,border:Border.all(width: 0.7,color: Colors.grey),borderRadius: BorderRadius.circular(4)),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    child:  Padding(
                                                      padding: const EdgeInsets.only(top: 3),
                                                      child: Column( children:[ Image.asset('assets/volleyball.png',width:20 ,height: 20,),
                                                        Text("volleyball",style: TextStyle(fontSize: 6),)

                                                      ]),
                                                    ),
                                                    height: 33,width: 33,
                                                    decoration: BoxDecoration(color: Colors.white,border:Border.all(width: 0.7,color: Colors.grey),borderRadius: BorderRadius.circular(4)),
                                                  ),
                                                ),
                                              ],)
                                          ],
                                        ),
                                      );
                                    }),


                          ]),
                        ),




                      ],
                    ),

                  ]
                ),
              ),

            ],
          ),
    )) ),


    );
  }

}


