abstract class LoginStates {}

class LoginInitialState extends LoginStates{}

class LoginLoadingState extends LoginStates{}

class LoginSuccessState extends LoginStates{}

class LoginErrorState extends LoginStates{

  final String error;
  LoginErrorState(this.error);}


  class OTPInitialState extends LoginStates{}

  class OTPLoadingState extends LoginStates{}

  class OTPSuccessState extends LoginStates{}

  class OTPErrorState extends LoginStates{

  final String error;
  OTPErrorState(this.error);
}