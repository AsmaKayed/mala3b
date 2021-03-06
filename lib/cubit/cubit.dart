


import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:untitled/cubit/states.dart';
import 'package:untitled/layouts/myAccount.dart';
import 'package:untitled/modules/mainModule/booking.dart';
import 'package:untitled/modules/mainModule/homePage.dart';
import 'package:untitled/modules/mainModule/profile.dart';
import 'package:untitled/network/local/cacheHelper.dart';


class AppCubit extends Cubit<AppStates>
{
  AppCubit():super(AppInitialState());

  static AppCubit get( context) => BlocProvider.of(context);

  int currentIndex=0;
  int counter=0;
  int secondcounter=0;
  int thirdcounter=0;

  void firstMinus(){

    (counter>=1)?counter--:null;

    emit(FirstMinusState());
  }
  void thirdMinus(){

    (thirdcounter>=1)?thirdcounter--:null;

    emit(ThirdMinusState());
  }
  void thirdPlus(){

    thirdcounter++;

    emit(ThirdPlusState());
  }

  void secondMinus(){

    (secondcounter>=1)?secondcounter--:null;

    emit(SecondMinusState());
  }
  void secondPlus(){
    secondcounter++;
    emit(SecondPlusState());
  }
  void firstPlus(){
    counter++;
    emit(FirstPlusState());
  }
  List<Widget> screens=[
     Home(),
    Booking(),
    Account(),
  ];
  void changeIndex(int index)
  {
    currentIndex=index;
    emit(AppChangedBottomNavBar());
  }
  bool isClick =false;
  bool firstisClick =false;
  bool secondisClick =false;
  bool thirdisClick =false;
  bool venueFirst=false;

void changeStyle() {
  isClick = !isClick;
  CacheHelper.putData(key: 'isClick', value: isClick).then((value) {
    emit(StyleChangeState());
  });
}
  void venueFirstStyle() {
    venueFirst = !venueFirst;
    CacheHelper.putData(key: 'venueFirst', value: venueFirst).then((value) {
     emit(VenueFirstState());
    });
  }
  void firstchangeStyle() {
    firstisClick = !firstisClick;
    CacheHelper.putData(key: 'firstisClick', value: firstisClick).then((value) {
      emit(FirstStyleChangeState());
    });
  }
  void secondchangeStyle() {
    secondisClick = !secondisClick;
    CacheHelper.putData(key: 'secondisClick', value: secondisClick).then((value) {
      emit(SecondStyleChangeState());
    });
  }
  void thirdchangeStyle() {
    thirdisClick = !thirdisClick;
    CacheHelper.putData(key: 'thirdisClick', value: thirdisClick).then((value) {
      emit(ThirdStyleChangeState());
    });
  }
}