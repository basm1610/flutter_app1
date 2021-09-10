import 'package:buildcondition/buildcondition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app1/layout/todo_app/news_layout/cubit/cubit.dart';
import 'package:flutter_app1/layout/todo_app/news_layout/cubit/states.dart';
import 'package:flutter_app1/shared/components/components.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BusinessScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit , NewsStates>(
      listener: (context , state){},
       builder: (context , state){
        var list = NewsCubit.get(context).business;
        return  articleBuilder(list,context);
       },
    );
  }
}
