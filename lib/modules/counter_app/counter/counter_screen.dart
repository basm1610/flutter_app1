
import 'package:flutter/material.dart';
import 'package:flutter_app1/modules/counter_app/counter/cubit/cubit.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/states.dart';

class CounterScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>CounterCubit(),
      child: BlocConsumer<CounterCubit,CounterStates>(
        listener:(context, state)
    {
          if(state is CounterMinusState)
          {
            //print('minus state ${state.counter}');
          }
          if(state is CounterPlusState)
          {
            //print('plus state ${state.counter}');
          }
        },
        builder:(context , state){
          return Scaffold(
            appBar: AppBar(
              title: Text(
                'counter',
              ),
            ),
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: ()
                    {
                      CounterCubit.get(context).minus();

                    },
                    child: Text(
                      'MINUS',
                    ),

                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Text(
                      '${CounterCubit.get(context).counter}',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: ()
                    {
                      CounterCubit.get(context).plus();
                    },
                    child: Text(
                      'PLUS',
                    ),

                  ),

                ],
              ),
            ),
          );
        } ,

      ),
    );
  }
}



