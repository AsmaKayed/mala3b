import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import '../reausable components/reusable components.dart';
import 'package:dotted_border/dotted_border.dart';

import 'myAccount.dart';
class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override

  Widget build(BuildContext context) {
    bool  ?isSwitchOn=false;
    return Scaffold(

      backgroundColor: mainGrey,
      body: Column(children: [
      Padding(
      padding: const EdgeInsets.only(top: 42),
      child: Row(children: [
        InkWell(
          onTap: (){  Navigator.pop(context, MaterialPageRoute(builder: (context)=>Account()));},
          child: Padding(
            padding: const EdgeInsets.only(left: 16,right: 123,),
            child: Image.asset('assets/backArrow.png',width: 25,height: 25,),
          ),
        ),
        Text('Settings',style: TextStyle(fontSize:18,fontFamily:"Poppins" ),),



      ],),

    ),   Container(
          margin: EdgeInsets.only(bottom: 23,top: 40, ),
          width: 382,height: 64,
          decoration: BoxDecoration(color: mainWhite,),

            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 186,left: 31),
                  child: Text('Notification',style: TextStyle(fontFamily: 'Poppins',fontSize: 17),),
                ),
                FlutterSwitch(
                  width: 35,height: 20,
                  value: isSwitchOn,
                  onToggle: (value) {
                    setState(() {
                      isSwitchOn = value;
                    });
                  },
                  inactiveSwitchBorder: Border.all(color: mainGreen),
                  inactiveColor: mainWhite,
                  toggleColor: mainGreen,
                  toggleSize: 15,

                ),
              ],
            ),

        ),])
    );
  }
}
