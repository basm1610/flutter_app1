import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app1/layout/todo_app/news_layout/cubit/states.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../business.dart';
import '../../../../shared/network/network/remote/dio_helper.dart';
import '../../../../science.dart';
import '../../../../sports.dart';

class NewsCubit extends Cubit<NewsStates>
{
  NewsCubit() :super (NewsInitialState());

  static NewsCubit get(context) =>BlocProvider.of(context);

  int currentIndex =0;
  List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(
      icon: Icon(
        Icons.business,
      ),
      label: 'Business',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.sports,
      ),
      label: 'Sports',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.science,
      ),
      label: 'Science',
    ),

  ];

  List<Widget> screens = [
    BusinessScreen(),
    SportsScreen(),
    ScienceScreen(),

  ];

  void changeBottomNavBar (int index)
  {
    currentIndex = index;
    if(index==1)
      getSports();
    if(index==2)
      getScience();
    emit(NewsBottomNavState());
  }

  List<dynamic> business =[];

  void getBusiness()
  {
    emit(NewsGetBusinessLoadingState());
    DioHelper.getData(
      url: 'v2/top-headlines',
      query: {
        'country':'eg',
        'category':'business',
        'apiKey':'68a7a343732f4d9ca115073e380ad460',
      },
    ).then((value){
      emit(NewsGetBusinessSuccessState());
      business = value.data['articles'];
      print(business[0]['title']);
    }).catchError((error){
      print(error.toString());
      emit(NewsGetBusinessErrorState(error.toString()));

    });
  }

  List<dynamic> sports =[];

  void getSports()
  {
    emit(NewsGetSportsLoadingState());

    if(sports.length==0)
    {
      DioHelper.getData(
        url: 'v2/top-headlines',
        query: {
          'country':'eg',
          'category':'sports',
          'apiKey':'68a7a343732f4d9ca115073e380ad460',
        },
      ).then((value){
        emit(NewsGetSportsSuccessState());
        sports = value.data['articles'];
        print(sports[0]['title']);
      }).catchError((error){
        print(error.toString());
        emit(NewsGetSportsErrorState(error.toString()));

      });
    }
    else
    {
      emit(NewsGetSportsSuccessState());

    }

  }
  List<dynamic> science =[];

  void getScience()
  {
    emit(NewsGetScienceLoadingState());
    if(science.length==0)
      {
        DioHelper.getData(
          url: 'v2/top-headlines',
          query: {
            'country':'eg',
            'category':'science',
            'apiKey':'68a7a343732f4d9ca115073e380ad460',
          },
        ).then((value){
          emit(NewsGetScienceSuccessState());
          science = value.data['articles'];
          print(science[0]['title']);
        }).catchError((error){
          print(error.toString());
          emit(NewsGetScienceErrorState(error.toString()));

        });
      }
    else{
      emit(NewsGetScienceSuccessState());

    }
  }

  List<dynamic> search =[];

  void getSearch(value)
  {
    emit(NewsGetSearchLoadingState());
    if(search.length==0)
    {
      DioHelper.getData(
        url: 'v2/everything',
        query: {
          'q':'$value',
          'apiKey':'68a7a343732f4d9ca115073e380ad460',
        },
      ).then((value){
        emit(NewsGetSearchSuccessState());
        search = value.data['articles'];
        print(search[0]['title']);
      }).catchError((error){
        print(error.toString());
        emit(NewsGetSearchErrorState(error.toString()));

      });
    }
    else{
      emit(NewsGetSearchSuccessState());

    }
  }
}