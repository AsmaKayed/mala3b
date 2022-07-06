

          import 'package:flutter/material.dart';
          import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/layouts/try.dart';
          import 'package:untitled/modules/login/register.dart';

          import '../../cubit/loginCubit/loginCubit.dart';
          import '../../cubit/loginCubit/loginStates.dart';
          import '../../reausable components/reusable components.dart';
          import 'login.dart';

              class OTP extends StatefulWidget {

                  @override
                  static  final GlobalKey<FormState> formKey =GlobalKey<FormState>();
                  State<OTP> createState() => _OTPState();
                }

                class _OTPState extends State<OTP> {
                                  @override
                  Widget build(BuildContext context) {
                    final otpController=TextEditingController();
                    return BlocProvider(
                        create: (BuildContext context)=>LoginCubit(),

                        child: BlocConsumer<LoginCubit,LoginStates>(
                        listener: (BuildContext context,LoginStates){
                          if (LoginStates is FirstLoginSuccessState) {
                            if (LoginCubit.get(context).loginModel?.token==null) {
                              print(5);
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
                            } else {
                              print(6);
                              print(LoginCubit.get(context).loginModel?.token);
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeLayout()));

                            }
                          }
                          },
                    builder: (BuildContext context,LoginStates)
                    =>Scaffold(
                      body: Stack(
                            children: [
                              Container(
                                  decoration: BoxDecoration(image:DecorationImage(image: AssetImage('assets/green.png'),fit: BoxFit.cover))),

                      SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Form(
                          key: OTP.formKey,
                          child: Column(
                           children: [
                          Container(
                           margin: const EdgeInsets.only(top: 118,left:155,right: 155 ),
                           child: Image.asset('assets/logo.png',width:103 ,height: 103,),
                          ),
                           SizedBox(height: 140,),
                           Container(
                           margin: const EdgeInsets.only(left: 63,right: 63),
                           child: Text("Enter OTP",style: TextStyle(color:Colors.white,fontSize: 24),),
                          ),
                                                 SizedBox(height: 24,),

                             Container(

                              margin: const EdgeInsets.only(left: 63,right: 63),
                              child: Text("Please enter your OTP shared to your registered mobile number",textAlign: TextAlign.center,style: TextStyle(color:Colors.white,fontSize: 14),),
                              ),
                             SizedBox(height: 31,),
                             Padding(
                               padding: const EdgeInsets.only(left:24, right: 24, ),
                               child: defaultTextField(controller: otpController , validate: (value){ if (value!.isEmpty){
                                 return '         Please enter your mobile number';
                               }}, label: "    Enter 6 digit OTP", ),
                             ),
                             SizedBox(height: 40,),
                             Container(
                               margin: const EdgeInsets.only(left:24,  ),
                               child: Row( children:[defaultBottom(imageText:"assets/arrow.png",function: (){
                                 if (OTP.formKey.currentState!.validate()){

                                     LoginCubit.get(context).login(otp: otpController.text,mobile: mobileNumberController.text);

                                   }

                                 }
                                  , text:'Complete sign up', width: 366 ),

                               ],),


                             ),
            ],

      ),
                        ),
                      ),

  ]  ))));
  }
}
