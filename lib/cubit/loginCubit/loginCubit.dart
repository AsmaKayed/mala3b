import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/appModels/loginModel.dart';
import 'package:untitled/cubit/loginCubit/loginStates.dart';
import 'package:untitled/network/remote/dio_helper.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit(): super(LoginInitialState());

 static LoginCubit get(context)=>BlocProvider.of(context);
   LoginModel? loginModel ;
  OTPModel? otpModel;
  LoginOTPModel ?loginOTPModel;

 void userLogin ({required String mobile}){
   emit(LoginLoadingState());

   DioHelper.postData(data: {'mobile':mobile}, url:'registerStepOnce').then((value) {
   loginModel=LoginModel.fromJson(value.data);
   print(value.data);
   emit(LoginSuccessState(loginModel!));}).catchError((error){
     emit(LoginErrorState(error.toString()));
   });

 }
  void userAlreadyLogin ({required String mobile}){
    emit(LoginOTPLoadingState());

    DioHelper.postData(data: {'mobile':mobile}, url:'sendLoginOtp').then((value) {
      loginOTPModel=LoginOTPModel.fromJson(value.data);
        print(value.data);

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

}