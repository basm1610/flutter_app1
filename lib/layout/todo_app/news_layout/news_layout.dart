import 'package:flutter/material.dart';
import 'package:flutter_app1/layout/todo_app/news_layout/cubit/states.dart';
import 'package:flutter_app1/modules/search/search_screen.dart';
import 'package:flutter_app1/shared/components/components.dart';
import 'package:flutter_app1/shared/cubit/cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../shared/network/network/remote/dio_helper.dart';
import 'cubit/cubit.dart';

class NewsLayout extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>NewsCubit()..getBusiness(),
      child: BlocConsumer<NewsCubit, NewsStates>(
          listener: (context , state){},
          builder: (context , state)
          {
            var cubit = NewsCubit.get(context);
            return Scaffold(
              appBar: AppBar(
                title: Text(
                    'News App'
                ),
                actions: [
                  IconButton(
                      onPressed: ()
                      {
                        navigateTo(context, SearchScreen(),);
                      },
                      icon: Icon(Icons.search),
                  ),
                  IconButton(
                    onPressed: ()
                    {
                      AppCubit.get(context).changeAppMode();
                    },
                    icon: Icon(Icons.brightness_4_rounded),
                  ),
                ],
              ),
              body: cubit.screens[cubit.currentIndex],
              bottomNavigationBar: BottomNavigationBar(
                currentIndex: cubit.currentIndex,
                onTap:(index){
                  cubit.changeBottomNavBar(index);
                } ,
                items: cubit.bottomItems,

              ),
            );
          }

      ),
    );
  }
}
