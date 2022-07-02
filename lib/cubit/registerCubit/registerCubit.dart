

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/appModels/loginModel.dart';
import 'package:untitled/cubit/registerCubit/registerStates.dart';

import '../../network/remote/dio_helper.dart';
import '../loginCubit/loginCubit.dart';

class RegisterCubit extends Cubit<RegisterStates> {
  RegisterCubit() : super(RegisterInitialState());

  static RegisterCubit get(context) => BlocProvider.of(context);
OTPModel? otpModel;


  void userRegister({required String name,required String email, }) {
    emit(RegisterLoadingState());

    DioHelper.postData(data: {'name':name,'email':email,'mobile': otpModel?.mobile,}, url: 'registerLast').then((
        value) {
        print(value.data);

      emit(RegisterSuccessState());
    }).catchError((error) {
      print(error);
      emit(RegisterErrorState(error.toString()));
    });
  }
}