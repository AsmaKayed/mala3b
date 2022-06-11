


import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:untitled/cubit/states.dart';
import 'package:untitled/modules/mainModule/booking.dart';
import 'package:untitled/modules/mainModule/homePage.dart';
import 'package:untitled/modules/mainModule/profile.dart';
import 'package:untitled/network/local/cacheHelper.dart';


class AppCubit extends Cubit<AppStates>
{
  AppCubit():super(AppInitialState());

  static AppCubit get( context) => BlocProvider.of(context);

  int currentIndex=0;
  List<Widget> screens=[
     Home(),
    Booking(),
    Profile(),
  ];
  void changeIndex(int index)
  {
    currentIndex=index;
    emit(AppChangedBottomNavBar());
  }
  bool isClick =false;
void changeStyle() {
  isClick = !isClick;
  CacheHelper.putData(key: 'isClick', value: isClick).then((value) {
    emit(StyleChangeState());
  });
}
}