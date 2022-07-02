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

 void userLogin ({required String mobile}){
   emit(LoginLoadingState());

   DioHelper.postData(data: {'mobile':mobile}, url:'registerStepOnce').then((value) {
   loginModel=LoginModel.fromJson(value.data);
   print(loginModel!.otp);

   emit(LoginSuccessState());}).catchError((error){
    print(error);
     emit(LoginErrorState(error.toString()));
   });
 }
  void userOTP ({required String otp}){
    emit(OTPLoadingState());

    DioHelper.postData(data: {'otp':otp}, url:'registerOTPVerify').then((value) {
      otpModel=OTPModel.fromJson(value.data);
      print(otpModel!.mobile);
    emit(OTPSuccessState());}).catchError((error){
      print(error);
      emit(OTPErrorState(error.toString()));
    });
  }

}