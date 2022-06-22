import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../layouts/myAccount.dart';
import '../../reausable components/reusable components.dart';



class Profile extends StatefulWidget {

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
final ImagePicker _picker=ImagePicker();

File? pickedImage;

fetchImage()async{
  final XFile? image=await _picker.pickImage(source: ImageSource.gallery);

   if(image==null){
     return;
   }
  setState((){
   pickedImage=File(image.path);
 });
}
TextEditingController nameController=TextEditingController(text: "John Doe",);
TextEditingController emailController=TextEditingController(text: "djohn@mail.com",);
TextEditingController mobileController=TextEditingController(text: "+974 3543 545",);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: mainGrey,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 42),
              child: Row(children: [
                InkWell(
                  onTap: (){  Navigator.pop(context, MaterialPageRoute(builder: (context)=>Account()));},
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16,right: 118,),
                    child: Image.asset('assets/backArrow.png',width: 25,height: 25,),
                  ),
                ),
                Text('My Profile',style: TextStyle(fontSize:18,fontFamily:"Poppins" ),),

              ],),),

              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Stack(children: [Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: CircleAvatar(
                    radius: 53,
                    backgroundColor: mainGreen,
                    child: CircleAvatar(
                      radius: 52,
                        backgroundColor: mainWhite,
                        backgroundImage:  pickedImage==null?null:Image.file(pickedImage!,).image,),
                  ),
                  ),


                  Padding(
                    padding: const EdgeInsets.only(left: 90,top: 75),
                    child: Container(
                      child: Center(child: InkWell(
                          onTap: (){
                            fetchImage();
                          },
                          child: Icon(Icons.edit_outlined,color: mainWhite,size: 15,))),
                      height: 24,width: 24,

                      decoration: BoxDecoration(shape: BoxShape.circle,color: mainGreen),

                    ),
                  ),

                ],

                ),
              ),
            Padding(
              padding: const EdgeInsets.only(left: 150,top: 22,right: 150,bottom: 4),
              child: Text('John Doe',style: TextStyle(fontSize: 17,fontFamily: 'Poppins',color: Color(0xff313130)),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100,right: 100),
              child: Text('Member Since 2020 March',style: TextStyle(color: Color(0xff707070),fontFamily: 'Poppins',fontSize: 13),),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 23,top:29,),
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
            Center(
              child: MaterialButton(
                onPressed: (){},
                child: Container(
                  width: 382,height: 80,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: mainGreen),
                  child: Center(child: Text('Update',style: TextStyle(color: mainWhite,fontSize: 18,fontFamily: 'Poppins'),)),
                ),
              ),
            )
          ]),
        )
    );
  }
}