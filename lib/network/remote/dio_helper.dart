
import 'package:dio/dio.dart';

class DioHelper{
  static Dio? dio;
  static init(){
    dio=Dio(BaseOptions(
      baseUrl: 'https://unaise15.sg-host.com/api/v1.0/user/',
      receiveDataWhenStatusError: true,
    ),);
  }
  static Future<Response> getData({
  required String url,
   required Map<String,dynamic> query,
})async{
    return await dio!.get(url,
    queryParameters: query,
    );

  }
  static Future<Response> postData({
    required String url,
    required Map<String,dynamic>  data,
    Map<String,dynamic>? query,

  })async{
    return await dio!.post(url,
      queryParameters: query,
      data: data,
    );
}}