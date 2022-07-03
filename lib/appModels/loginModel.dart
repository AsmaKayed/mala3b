

import 'package:untitled/modules/login/login.dart';

class LoginModel{
  String? status;
  int ? otp;

  LoginModel.fromJson(dynamic json){
    status =json['status'];
    otp =json['otp'];
}
}


class OTPModel{
  String? status;
  String ? mobile;

  OTPModel.fromJson(dynamic json){
    status =json['status'];
    mobile =json['mobile'];
  }

}