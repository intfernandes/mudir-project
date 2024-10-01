import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  static HomeCubit get(context)=>BlocProvider.of(context);
  CrossFadeState homePage=CrossFadeState.showFirst;

  void changeFadeState(){
    if(homePage==CrossFadeState.showFirst){
      homePage=CrossFadeState.showSecond;
    emit(ChangeFadeState());
    }
    else if(homePage==CrossFadeState.showSecond){
      homePage=CrossFadeState.showFirst;
    emit(ChangeFadeState());
    }
  }
}
