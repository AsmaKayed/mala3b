import 'package:flutter/material.dart';
import 'package:untitled/reausable%20components/reusable%20components.dart';

import 'myAccount.dart';

class  CustomerSupport extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    TextEditingController nameController=TextEditingController(text: "John Doe",);
    TextEditingController emailController=TextEditingController(text: "djohn@mail.com",);
    TextEditingController mobileController=TextEditingController(text: "+974 3543 545",);
    TextEditingController messageController=TextEditingController(text: ""
        "Get 30 % cashback on your next Booking",);
    return Scaffold(
           backgroundColor: mainGrey,
    body: Column(children: [
      Padding(
        padding: const EdgeInsets.only(top: 42),
        child: Row(children: [
          InkWell(
            onTap: (){  Navigator.pop(context, MaterialPageRoute(builder: (context)=>Account()));},
            child: Padding(
              padding: const EdgeInsets.only(left: 16,right: 77,),
              child: Image.asset('assets/backArrow.png',width: 25,height: 25,),
            ),
          ),
          Text('Customer Support',style: TextStyle(fontSize:18,fontFamily:"Poppins" ),),

  ],),
      ),
     Container(
       margin: EdgeInsets.only(bottom: 23,top:98 ),
            width: 382,height: 64,
            decoration: BoxDecoration(color: mainWhite,borderRadius: BorderRadius.circular(8),),
            child: Padding(
              padding: const EdgeInsets.only(left: 25),
              child: TextFormField(
              controller: nameController,
              validator: (value){},
                decoration: InputDecoration( border: InputBorder.none,label: Text('Name',style: TextStyle(fontSize: 15,fontFamily: 'Poppins',color: Color(0xff707070)),)),
              ),
            ),
          ),
      Container(
        margin: EdgeInsets.only(bottom: 23),
        width: 382,height: 64,
        decoration: BoxDecoration(color: mainWhite,borderRadius: BorderRadius.circular(8),),
        child: Padding(
          padding: const EdgeInsets.only(left: 25),
          child: TextFormField(
            controller: emailController,
            validator: (value){},
            decoration: InputDecoration( border: InputBorder.none,label: Text('Mail ID',style: TextStyle(fontSize: 15,fontFamily: 'Poppins',color: Color(0xff707070)),)),
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(bottom: 23),
        width: 382,height: 64,
        decoration: BoxDecoration(color: mainWhite,borderRadius: BorderRadius.circular(8),),
        child: Padding(
          padding: const EdgeInsets.only(left: 25),
          child: TextFormField(
            controller: mobileController,
            validator: (value){},
            decoration: InputDecoration( border: InputBorder.none,label: Text('Mobile Number',style: TextStyle(fontSize: 15,fontFamily: 'Poppins',color: Color(0xff707070)),)),
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(bottom: 56),
        width: 382,height: 98,
        decoration: BoxDecoration(color: mainWhite,borderRadius: BorderRadius.circular(8),),
        child: Padding(
          padding: const EdgeInsets.only(left: 25),
          child: TextFormField(
            controller: messageController,
            scrollPhysics: ScrollPhysics(),
            validator: (value){},
            decoration: InputDecoration( border: InputBorder.none,label: Text('Message',style: TextStyle(fontSize: 15,fontFamily: 'Poppins',color: Color(0xff707070)),)),
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(bottom: 23),
        width: 382,height: 80,
        decoration: BoxDecoration(color: mainGreen,borderRadius: BorderRadius.circular(8),),
        child: MaterialButton(onPressed: (){},
          child: Text('Send Message',style: TextStyle(fontSize:18,fontFamily: 'Poppins',color: mainWhite ),),

        ),
      )



  ],),
    );
  }
}
