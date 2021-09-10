import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        leading: Icon(
          Icons.menu,
        ),
        title: Text(
          'first my app',
        ),
        actions: [



          IconButton(onPressed: (){
            print('Beso');
          }, icon: Text(
            'hello',
          ),)

        ],
        centerTitle: true,
      ),
          body: Column(
            children: [
              Container(
               width: 200.0,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children:
                      [
                  Image(
                    image: NetworkImage(
                      'https://www.thoughtco.com/thmb/U3uVJMsgzLd00DbkIicnnIYM_kM=/1414x1414/smart/filters:no_upscale()/lotus-flower-828457262-5c6334b646e0fb0001dcd75a.jpg',
                    ),
                    width: 200.0,
                    height: 200,
                    fit: BoxFit.cover,

                  ),
                        Container(
                          //width: double.infinity,
                          color: Colors.red.withOpacity(.7),
                          padding: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 0,
                          ),


                          child: Text(
                            'flower',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,

                            ),
                          ),
                        ),
                  ],
                ),
              ),

            ],
          ),
    );
  }

}