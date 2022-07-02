

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/cubit/registerCubit/registerCubit.dart';
import 'package:untitled/cubit/registerCubit/registerStates.dart';
import 'package:untitled/layouts/try.dart';
import 'package:untitled/modules/login/login.dart';
import 'package:untitled/modules/mainModule/homePage.dart';

import '../../cubit/loginCubit/loginCubit.dart';
import '../../cubit/loginCubit/loginStates.dart';
import '../../reausable components/reusable components.dart';

class Register extends StatefulWidget {


  @override
  static  final GlobalKey<FormState> formKey =GlobalKey<FormState>();
  State<Register> createState() => _RegisterState();

}
class _RegisterState extends State<Register> {
  LoginCubit login=LoginCubit();

  @override
  Widget build(BuildContext context) {
    final nameController=TextEditingController();
    final emailController=TextEditingController();
    return BlocProvider(
        create: (BuildContext context)=>RegisterCubit(),

        child: BlocConsumer<RegisterCubit,RegisterStates>(
        listener: (BuildContext context,RegisterStates){},
    builder: (BuildContext context,RegisterStates)
    =>Scaffold(
        body: Stack(
            children: [
              Container(
                  decoration: BoxDecoration(image:DecorationImage(image: AssetImage('assets/green.png'),fit: BoxFit.cover))),

              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Form(
                  key: Register.formKey,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 118,left:155,right: 155 ),
                        child: Image.asset('assets/logo.png',width:103 ,height: 103,),
                      ),
                      SizedBox(height: 119,),
                      Container(
                        margin: const EdgeInsets.only(left: 63,right: 63),
                        child: Text("Register",style: TextStyle(color:Colors.white,fontSize: 24),),
                      ),
                      SizedBox(height: 24,),
                      Padding(
                        padding: const EdgeInsets.only(left:24, right: 24, ),
                        child: defaultTextField(controller: nameController , validate: (value){if (value!.isEmpty){
                          return '         Please enter your name';
                        }}, label: "    Enter your name", ),
                      ),


                      SizedBox(height: 24,),
                      Padding(
                        padding: const EdgeInsets.only(left:24, right: 24, ),
                        child: defaultTextField(controller: emailController , validate: (value){if (value!.isEmpty){
                          return '         Please enter your Email ';
                        }}, label: "    Enter your Email", ),
                      ),
                      SizedBox(height: 40,),
                      Container(
                        margin: const EdgeInsets.only(left:24,  ),
                        child: Row( children:[defaultBottom(imageText:"assets/arrow.png",function: (){
                          if (Register.formKey.currentState!.validate()){
                            RegisterCubit.get(context).userRegister(name: nameController.text, email:emailController.text,  );
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeLayout()));
                          }

                        }, text:'Register', width: 366 ),

                        ],),


                      ),
                    ],

                  ),
                ),
              ),

            ]  ))));
  }
}
