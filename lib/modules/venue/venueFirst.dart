
import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../../appModels/appModels.dart';
import '../../reausable components/reusable components.dart';

class FirstVenuePage extends StatefulWidget {

  @override
  State<FirstVenuePage> createState() => _FirstVenuePageState();
}

class _FirstVenuePageState extends State<FirstVenuePage> {
  List<PitchModel>? pitch=[
    PitchModel(size: '5x5 pitch', name: 'football', image: Image.asset('assets/secondfootball.png' ,),),
    PitchModel(size: '6x6 pitch', name: 'volleyball', image:Image.asset('assets/secondbasketball.png'),),
  ];

  late DateTime _selectedDate;

  @override
  void initState() {
    super.initState();
    _resetSelectedDate();
  }

  void _resetSelectedDate() {
    _selectedDate = DateTime.now().add(Duration(days: 5));
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
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
                 Padding(
                   padding: const EdgeInsets.only(left: 24,top: 46),
                   child: Text('WESTBAY , Doha, Qatar',style: TextStyle(fontSize: 12,fontFamily: 'Poppins',fontWeight: FontWeight.w100),),
                 ),

                 Padding(
                   padding: const EdgeInsets.only(left: 200,top: 50),
                   child: Image.asset('assets/loc.png',width: 25,height: 25,),
                 ),

               ],),
               Padding(
                 padding: const EdgeInsets.only(left: 24,top: 39,right:292 ),
                 child: Text('Select pitch',style: TextStyle(fontSize: 16,fontFamily: 'Poppins',),),
               ),


                  SingleChildScrollView(
                     scrollDirection: Axis.horizontal,

                     child: Padding(
                       padding: const EdgeInsets.only(bottom: 30),
                       child: Container(
                         width: 510,
                         height: 79,
                            child: StaggeredGridView.countBuilder(
                                scrollDirection: Axis.vertical,
                                staggeredTileBuilder: (int index)=>StaggeredTile.count(1,0.4),
                           crossAxisCount: 2,

                                mainAxisSpacing: 8,
                                itemCount: pitch!.length,
                                crossAxisSpacing: 0,
                                itemBuilder: (BuildContext context, int index) =>buildCard(pitch![index] )
                  ),

                           ),
                     ),
                   ),



               Expanded(

                 child:SingleChildScrollView(
                   scrollDirection: Axis.horizontal,

                   child: Padding(
                     padding: const EdgeInsets.only(right: 150,left: 20),
                     child: Container(
                       width: 267,
                       height: 73,
                       child: GridView.builder(
                           itemCount: 3,
                       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                         crossAxisCount: 3,

                         mainAxisSpacing: 10,

                         crossAxisSpacing: 12,

                           ), itemBuilder: (BuildContext context, int index) =>buildSmallCard(index),)),
                   ))),



             ],),
            ),



        ]),


        ]

    ))

    );
  }

  Widget buildCard(PitchModel pitch )=>Padding(
    padding: const EdgeInsets.only(left: 20,top: 15),
    child: Container(
      width: 200,height: 50,
      decoration: BoxDecoration(border: Border.all(width:2,color: mainGreen),borderRadius: BorderRadius.circular(4)),
      child: Card(
        elevation: 0,
        child: Container(
            child:Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8,right: 148,top: 8,bottom: 8),
                  child: Text('${pitch.size}',style: TextStyle(fontSize: 15),),
                ),
                Row(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Row(

                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8,right: 2),
                                child: Container(
                                  width: 67,height: 26,
                                  color: mainGrey,
                                    child: Center(child: Text('Football',style: TextStyle(fontSize: 15),))),
                              ),
                             Container(
                               margin: const EdgeInsets.only(right: 2),
                                    width: 67,height: 26,
                                  color: mainGrey,
                                    child: Center(child: Text('Volleyball',style: TextStyle(fontSize: 15),))),

                              Container(

                                    width: 67,height: 26,
                                  color: mainGrey,
                                    child: Center(child: Text('Hockey',style: TextStyle(fontSize: 15),))),

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
    ),
  );

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















