

import 'package:untitled/modules/login/login.dart';

class LoginModel{
  String? status;
  int ? otp;
  String ?message;
  Errors? errors;


  LoginModel.fromJson(Map<String,dynamic> json){
    status =json['status'];
    otp =json['otp'];
    message =json['message'];
    errors =json['errors']!=null?Errors.fromJson(json['errors']):null;
}
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['otp'] = this.otp;
    data['message'] = this.message;
    data['errors'] = this.errors;

    return data;
  }
}
class Errors {
  dynamic mobile;

  Errors.fromJson(dynamic json){
    mobile =json['mobile'];

  }
}
class LoginOTPModel{
  String? status;
  int ? otp;



  LoginOTPModel.fromJson(dynamic json){
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