
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/appModels/loginModel.dart';
import 'package:untitled/cubit/loginCubit/loginStates.dart';
import 'package:untitled/network/remote/dio_helper.dart';

import '../../modules/login/register.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit(): super(LoginInitialState());

 static LoginCubit get(context)=>BlocProvider.of(context);
   RegisterFirstModel? registerFirstModel ;
  OTPModel? otpModel;
  LoginOTPModel ?loginOTPModel;
  LoginModel? loginModel;

 void userFirstRegister ({required String mobile}){
   emit(LoginLoadingState());

   DioHelper.postData(data: {'mobile':mobile}, url:'registerStepOnce').then((value) {
   registerFirstModel=RegisterFirstModel.fromJson(value.data);
   print(registerFirstModel?.otp);
     if(registerFirstModel?.otp==null){
       DioHelper.postData(data: {'mobile':mobile}, url:'sendLoginOtp').then((value) {
         loginOTPModel=LoginOTPModel.fromJson(value.data);
         print(loginOTPModel?.otp);
         });}
   emit(LoginSuccessState(registerFirstModel!));}).catchError((error){
     emit(LoginErrorState(error.toString()));
   });

 }
  void userAlreadyLogin ({required String mobile}){
    emit(LoginOTPLoadingState());

    DioHelper.postData(data: {'mobile':mobile}, url:'sendLoginOtp').then((value) {
      loginOTPModel=LoginOTPModel.fromJson(value.data);


      emit(LoginOTPSuccessState(loginOTPModel!));}).catchError((error){

      emit(LoginOTPErrorState(error.toString()));
    });

  }
  void userOTP ({required String otp}){
    emit(OTPLoadingState());

   DioHelper.postData(data: {'otp':otp}, url:'registerOTPVerify').then((value) {
      otpModel=OTPModel.fromJson(value.data);
    emit(OTPSuccessState(otpModel!));
    }).catchError((error){
      print(error);
      emit(OTPErrorState(error.toString()));
    });

  }


  void userRegister({required String name,required String email,required var mobile }) {
    emit(RegisterLoadingState());

    DioHelper.postData(data: {'name':name,'email':email,'mobile': mobile,}, url: 'registerLast').then((
        value) {
      print(value.data);

      emit(RegisterSuccessState());
    }).catchError((error) {
      print(error);
      emit(RegisterErrorState(error.toString()));
    });
  }


  void login({required String otp,required String mobile}) {
    emit(RegisterLoadingState());

    DioHelper.postData(data: {'mobile':mobile,'otp':otp,}, url:'login').then((
        value) {
      loginModel=LoginModel.fromJson(value.data);
      print(loginModel?.status);
      if(loginModel?.token==null)
        {
          DioHelper.postData(data: {'otp':otp}, url:'registerOTPVerify').then((value) {
            otpModel=OTPModel.fromJson(value.data);
              print(otpModel?.status);

          });}
      emit(FirstLoginSuccessState(loginModel!));
    }).catchError((error) {
      print(error);
      emit(FirstLoginErrorState(error.toString()));
    });
  }

}