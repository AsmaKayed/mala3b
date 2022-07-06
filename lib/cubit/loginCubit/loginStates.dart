import 'package:untitled/appModels/loginModel.dart';

import '../../appModels/loginModel.dart';
import '../../appModels/loginModel.dart';

abstract class LoginStates {}

class LoginInitialState extends LoginStates{}

class LoginLoadingState extends LoginStates{}

class LoginSuccessState extends LoginStates{
  final RegisterFirstModel loginModel;
  LoginSuccessState(this.loginModel);

}

class LoginErrorState extends LoginStates{

  final String error;
  LoginErrorState(this.error);}

abstract class LoginOTPStates {}

class LoginOTPInitialState extends LoginStates{}

class LoginOTPLoadingState extends LoginStates{}

class LoginOTPSuccessState extends LoginStates{
  final LoginOTPModel loginOTPModel;
  LoginOTPSuccessState(this.loginOTPModel);

}

class LoginOTPErrorState extends LoginStates{

  final String error;
  LoginOTPErrorState(this.error);}


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

class FirstLoginSuccessState extends LoginStates{
    final LoginModel loginModel;
  FirstLoginSuccessState( this.loginModel);

}

class FirstLoginErrorState extends LoginStates{

  final String error;
  FirstLoginErrorState(this.error);}
