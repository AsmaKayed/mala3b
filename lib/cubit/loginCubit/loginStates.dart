import 'package:untitled/appModels/loginModel.dart';

import '../../appModels/loginModel.dart';
import '../../appModels/loginModel.dart';

abstract class LoginStates {}

class LoginInitialState extends LoginStates{}

class LoginLoadingState extends LoginStates{}

class LoginSuccessState extends LoginStates{}

class LoginErrorState extends LoginStates{

  final String error;
  LoginErrorState(this.error);}


  class OTPInitialState extends LoginStates{}

  class OTPLoadingState extends LoginStates{}

  class OTPSuccessState extends LoginStates{
  final OTPModel otpModel;
  OTPSuccessState(this.otpModel);

  }

  class OTPErrorState extends LoginStates{

  final String error;
  OTPErrorState(this.error);
}

class RegisterInitialState extends LoginStates{}

class RegisterLoadingState extends LoginStates{}

class RegisterSuccessState extends LoginStates{}

class RegisterErrorState extends LoginStates{

  final String error;
  RegisterErrorState(this.error);}