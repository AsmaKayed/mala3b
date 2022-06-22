

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:untitled/layouts/Discount.dart';
import 'package:untitled/layouts/customer%20support.dart';
import 'package:untitled/layouts/notifications.dart';
import 'package:untitled/layouts/settings.dart';
import 'package:untitled/layouts/try.dart';
import 'package:untitled/modules/mainModule/booking.dart';
import 'package:untitled/modules/mainModule/profile.dart';

import '../cubit/cubit.dart';
import '../cubit/states.dart';
import '../reausable components/reusable components.dart';


class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context)=>AppCubit(),

    child: BlocConsumer<AppCubit,AppStates>(
    listener: (BuildContext context,AppStates){},
    builder: (BuildContext context,AppStates)
    =>  Scaffold(
      backgroundColor: Color(0xfffafafa),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          Row(
            children: [
              InkWell(
                onTap: (){  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeLayout()));},
                child: Container(
                  alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(top: 43,left: 16,),
                    child: Icon(Icons.arrow_back_outlined,color: mainGreen,size: 25,)),
              ),
              Container(
                  margin: EdgeInsets.only(top: 43,left: 103,right: 151),
                  child: Text('My Account',style: TextStyle(fontFamily: 'Poppins',fontSize: 18))),
            ],
          ),

          Container(
            margin: EdgeInsets.only(top: 18,),
            decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(26)),
            width:441,height: 235,
            child: Column(
              children: [

              Stack(children: [Padding(
                padding: const EdgeInsets.all(6.0),
                child: Container(
                height: 112,width: 112,
             decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: mainGreen,width: 1)),

                ),

              ),
                Padding(
                  padding: const EdgeInsets.only(left: 90,top: 90),
                  child: Container(
                    child: Center(child: Icon(Icons.edit_outlined,color: mainWhite,size: 15,)),
                    height: 24,width: 24,
                    decoration: BoxDecoration(shape: BoxShape.circle,color: mainGreen),

                  ),
                ),

              ],

    ),
                Text('John Doe',style: TextStyle(fontSize: 17,fontFamily: 'Poppins'),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Member Since 2020 March',style: TextStyle(fontSize: 13,fontFamily: 'Poppins',color: Colors.grey.shade400),),
                ),
                Container(
                  width: 269,height: 43,
                  decoration: BoxDecoration(border: Border.all(color: mainGrey,width: 1,)),
                  child: Row(
                    children: [
                       Image.asset('assets/wallet.png',height: 30,width: 30,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Your Wallet',style: TextStyle(fontSize: 14,fontFamily: 'Poppins',color: Colors.black),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 80,),
                        child: Text('0 QAR',style: TextStyle(fontSize: 17,fontFamily: 'Poppins',color: Colors.black),),
                      ),
                    ],
                  ),
                )
            ],

            ),
          ),
        Container(
          margin: EdgeInsets.only(top: 18,),
          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(26)),
          width:441,height: 600,
        child: Column(children: [

          Padding(
            padding: const EdgeInsets.only(left: 33,top: 25),
            child: InkWell(
              onTap: (){  Navigator.push(context, MaterialPageRoute(builder: (context)=>Notifications()));},
              child: Container(
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child:Image.asset('assets/notification.png')
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 204),
                    child: Text('Notification',style: TextStyle(fontSize: 16,color:Color(0xff313133),fontFamily:'Poppins' ), ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Icon(Icons.arrow_forward_ios,size: 20,),
                  ),
                ],),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16,bottom: 16),
            child: Container(height: 0.5,width: 364,color: mainGrey,),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 33,),
            child: InkWell(
              onTap: (){  Navigator.push(context, MaterialPageRoute(builder: (context)=>Discount()));},
              child: Container(
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Image.asset('assets/discount.png')),

                  Padding(
                    padding: const EdgeInsets.only(right: 226),
                      child: Text('Discount',style: TextStyle(fontSize: 16,color:Color(0xff313133),fontFamily:'Poppins' ), ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Icon(Icons.arrow_forward_ios,size: 20,),
                  ),
                ],),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16,bottom: 16),
            child: Container(height: 0.5,width: 364,color: mainGrey,),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 33,),
            child: InkWell(
              onTap: (){  Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));},
              child: Container(
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Image.asset('assets/account.png')),

                  Padding(
                    padding: const EdgeInsets.only(right: 220),
                    child: Text('My Profile',style: TextStyle(fontSize: 16,color:Color(0xff313133),fontFamily:'Poppins' ), ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Icon(Icons.arrow_forward_ios,size: 20,),
                  ),
                ],),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16,bottom: 16),
            child: Container(height: 0.5,width: 364,color: mainGrey,),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 33,),
            child: InkWell(
              onTap: (){  Navigator.push(context, MaterialPageRoute(builder: (context)=>Booking()));},
              child: Container(
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Image.asset('assets/cal.png')
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 200),
                    child: Text('My Bookings',style: TextStyle(fontSize: 16,color:Color(0xff313133),fontFamily:'Poppins' ), ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Icon(Icons.arrow_forward_ios,size: 20,),
                  ),
                ],),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16,bottom: 16),
            child: Container(height: 0.5,width: 364,color: mainGrey,),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 33,),
            child: InkWell(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Settings()));},
              child: Container(
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Image.asset('assets/settings.png')
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 233),
                    child: Text('Settings',style: TextStyle(fontSize: 16,color:Color(0xff313133),fontFamily:'Poppins' ), ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Icon(Icons.arrow_forward_ios,size: 20,),
                  ),
                ],),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16,bottom: 16),
            child: Container(height: 0.5,width: 364,color: mainGrey,),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 33,),
            child: Container(
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child:Image.asset('assets/terms.png')
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 140),
                  child: Text('Terms & Conditions',style: TextStyle(fontSize: 16,color:Color(0xff313133),fontFamily:'Poppins' ), ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Icon(Icons.arrow_forward_ios,size: 20,),
                ),
              ],),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16,bottom: 16),
            child: Container(height: 0.5,width: 364,color: mainGrey,),
          ),
          InkWell(
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>CustomerSupport()));},
            child: Padding(
              padding: const EdgeInsets.only(left: 33,),
              child: Container(
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Image.asset('assets/customer-support.png')
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 150),
                    child: Text('Customer Support',style: TextStyle(fontSize: 16,color:Color(0xff313133),fontFamily:'Poppins' ), ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Icon(Icons.arrow_forward_ios,size: 20,),
                  ),
                ],),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16,bottom: 16),
            child: Container(height: 0.5,width: 364,color: mainGrey,),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 33,),
            child: Container(
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child:Image.asset('assets/privacy.png')
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 190),
                  child: Text('Privacy Policy',style: TextStyle(fontSize: 16,color:Color(0xff313133),fontFamily:'Poppins' ), ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Icon(Icons.arrow_forward_ios,size: 20,),
                ),
              ],),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16,bottom: 16),
            child: Container(height: 0.5,width: 364,color: mainGrey,),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 33,),
            child: Container(
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Image.asset('assets/about.png')
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 255),
                  child: Text('About',style: TextStyle(fontSize: 16,color:Color(0xff313133),fontFamily:'Poppins' ), ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Icon(Icons.arrow_forward_ios,size: 20,),
                ),
              ],),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16,bottom: 16,right: 290 ),
            child: TextButton(onPressed: (){}, child:Text('Logout',style: TextStyle(color: mainGreen,fontSize:16,fontWeight: FontWeight.bold ),) )
          ),









        ],),




        )


        ],),
      ),
    ) ));
  }
}
