import 'package:carousel_slider/carousel_slider.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/cubit/cubit.dart';
import 'package:untitled/reausable%20components/reusable%20components.dart';

import '../cubit/states.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return BlocProvider(
        create: (BuildContext context)=>AppCubit(),

        child: BlocConsumer<AppCubit,AppStates>(
          listener: (BuildContext context,AppStates){},
          builder: (BuildContext context,AppStates)
          => Scaffold(
                    body: ConditionalBuilder(
                      condition: true,
                      builder: (context)=>AppCubit.get(context).screens[AppCubit.get(context).currentIndex],
                      fallback: (context)=>Center(child: CircularProgressIndicator(),),
                    ),
             bottomNavigationBar: BottomNavigationBar(
               type:  BottomNavigationBarType.fixed,
               selectedLabelStyle: TextStyle(fontFamily:'SF Pro Display',fontSize: 10),
               unselectedLabelStyle: TextStyle(fontFamily:'SF Pro Display',fontSize: 10),
               currentIndex: AppCubit.get(context).currentIndex,
               selectedItemColor: mainGreen,
               unselectedItemColor: Colors.black,
               onTap: (index){
                 AppCubit.get(context).changeIndex(index);
               },
               backgroundColor: Colors.white,

               iconSize: 20,
               elevation:5,
               items:  [
                 BottomNavigationBarItem(icon: Padding(padding: const EdgeInsets.only(bottom: 2),
                   child: Image(image: AssetImage('assets/home.png')),), label: 'Home'),
                 BottomNavigationBarItem(icon:  Padding(
                   padding: const EdgeInsets.only(bottom: 2),
                   child: Image(image: AssetImage('assets/booking.png')),
                 ),label: 'Booking'),
                 BottomNavigationBarItem(icon:  Padding(
                   padding: const EdgeInsets.only(bottom: 2),
                   child: Image(image: AssetImage('assets/profile.png')),
                 ),label: 'Profile'),
               ],

             ),
           )
        ),
      );
  }
}
