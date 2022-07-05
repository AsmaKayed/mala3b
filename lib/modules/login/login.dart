import 'dart:convert';

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/cubit/loginCubit/loginCubit.dart';
import 'package:untitled/cubit/loginCubit/loginStates.dart';
import 'package:untitled/modules/login/otp.dart';
import 'package:untitled/reausable%20components/reusable%20components.dart';

import '../../appModels/loginModel.dart';
import '../../cubit/cubit.dart';
import '../../cubit/states.dart';
import '../../network/local/cacheHelper.dart';

class Login extends StatefulWidget {
  @override
  static  final GlobalKey<FormState> formKey =GlobalKey<FormState>();


  @override
  State<Login> createState() => _LoginState();
}
 final TextEditingController mobileNumberController=TextEditingController();

class _LoginState extends State<Login> {
  Widget build(BuildContext context) {
    var deviceData=MediaQuery.of(context);
LoginModel? loginModel;


    return BlocProvider(
        create: (BuildContext context)=>LoginCubit(),

        child: BlocConsumer<LoginCubit,LoginStates>(
        listener: (BuildContext context,LoginStates){
          // if (LoginStates is LoginSuccessState)
          // {
      //       if (LoginStates.loginModel.status != null)
      //       {
      //         print(  LoginCubit.get(context).loginModel?.otp);
      // }}
          //
          //   } else
          //   {
          //     print(state.loginModel.status);
          //   }
          // }else if(state is LoginOTPSuccessState){
          //   if (state.loginOTPModel.status != null)
          //   {
          //     print(loginModel?.otp);
          //     CacheHelper.saveData(key: 'mobile', value: state.loginOTPModel.otp);
          //
          //   } else
          //   {
          //     print(state.loginOTPModel.status);
          //   }
          //
          // }

        },
           builder: (BuildContext context,LoginStates)
           {
             return Scaffold(
            body:Stack(
             children:[
             Container(
                decoration: BoxDecoration(image:DecorationImage(image: AssetImage('assets/green.png'),fit: BoxFit.cover))),


               SingleChildScrollView(
                 scrollDirection: Axis.vertical,
                 child: Form(
                   key: Login.formKey,
                   child: Column(
                     children: [
                        Container(
                         margin: const EdgeInsets.only(top: 118,left:155,right: 155 ),
                         child: Image.asset('assets/logo.png',width:103 ,height: 103,),
                       ),
                       SizedBox(height: 97,),
                       Container(
                         margin: const EdgeInsets.only(left: 63,right: 63),
                         child: Text("Login with your mobile number",style: TextStyle(color:Colors.white,fontSize: 19),),
                       ),
                       SizedBox(height: 24,),
                       Padding(
                         padding: const EdgeInsets.only(left:24, right: 24, ),

                         child: Container(
                           height: 60,
                           decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(8)

                           ),
                           child: TextFormField(
                               controller: mobileNumberController ,
                               keyboardType: const TextInputType.numberWithOptions(signed: true,),
                               validator: (String?value){
                                 if (value!.isEmpty){
                                   return '         Please enter your mobile number';
                                 }
                                 },
                               decoration: InputDecoration(  border: InputBorder.none, hintText: "Enter your mobile number", prefix: Icon(Icons.call,color: Colors.green,)),


                           ),
                         ),
                       ),
                       SizedBox(height: 24,),
                       Padding(
                         padding: const EdgeInsets.only(right: 133,left: 133),
                         child: Container(
                           child: Row(
                             children: [
                               Container(
                                 child: Image.asset('assets/right.png',width:17 ,height: 17,),
                               ),
                               SizedBox(width: 2,),
                               Text("Terms & conditions",style: TextStyle(color:Colors.white,fontSize: 14),),
                             ],
                           ),
                         ),
                       ),
                       SizedBox(height: 24,),

                      Container(
                        margin: const EdgeInsets.only(left:24,  ),
                        child: Row( children:[
                          ConditionalBuilder(condition: State is! LoginLoadingState, builder: (context)=>  defaultBottom(imageText:"assets/arrow.png",
                          function: (){

                            if (Login.formKey.currentState!.validate()){
                                LoginCubit.get(context).userLogin(mobile: mobileNumberController.text);


                                  // if(  LoginCubit.get(context).loginModel?.errors?.mobile.toString()=="[The mobile has already been taken.]"){
                                  //   LoginCubit.get(context).userAlreadyLogin(mobile: mobileNumberController.text);
                                  //   print('55555');
                                  //
                                  //   Navigator.push(context, MaterialPageRoute(builder: (context)=>OTP()));}
                                  //
                                  // else{
                                  //   Navigator.push(context, MaterialPageRoute(builder: (context)=>OTP()));
                                  //   print('6');
                                  //
                                  //
                                  // }
                              }


                            }

                          , text:'Sign in', width: 366 ), fallback: (context)=> Center(child: CircularProgressIndicator()),),


                    ],),


                    ),

                     ]
                   ),
                 ),
               ),



          ]));}));


  }
}
