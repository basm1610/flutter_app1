import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app1/main.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20.0,
        title:Row(
          children: [
            CircleAvatar(
              radius: 20.5,
              backgroundImage: NetworkImage('https://images-na.ssl-images-amazon.com/images/I/71NYLpc8gdL._SL1500_.jpg'),

            ),
            SizedBox(
              width: 15,
            ),
            Text(
              'chats',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: (){

          }, icon: CircleAvatar(
            radius: 15,
            backgroundColor: Colors.blue,
            child: Icon(
              Icons.camera_alt,
              size: 17.0,
              color: Colors.white,
            ),
          ),),
          IconButton(onPressed: (){

          }, icon: CircleAvatar(
            radius: 15,
            backgroundColor: Colors.blue,
            child: Icon(
              Icons.edit,
              size: 17.0,
              color:Colors.white,
            ),
          ),),

        ],


      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.grey[300],


              ),
              padding: EdgeInsets.all(5.0),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Text(
                    'search',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 80.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,

                          children:[
                            CircleAvatar(
                              radius: 40.0,
                              backgroundImage: NetworkImage('https://images-na.ssl-images-amazon.com/images/I/71NYLpc8gdL._SL1500_.jpg'),

                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 3.0,
                                  end: 3.0
                              ),
                              child: CircleAvatar(
                                radius: 5.0,
                                backgroundColor: Colors.red,
                              ),
                            ),
                          ],



                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'basm mohamed abdel fathi',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 80.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,

                          children:[
                            CircleAvatar(
                              radius: 40.0,
                              backgroundImage: NetworkImage('https://images-na.ssl-images-amazon.com/images/I/71NYLpc8gdL._SL1500_.jpg'),

                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 3.0,
                                  end: 3.0
                              ),
                              child: CircleAvatar(
                                radius: 5.0,
                                backgroundColor: Colors.red,
                              ),
                            ),
                          ],



                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'basm mohamed abdel fathi',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 80.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,

                          children:[
                            CircleAvatar(
                              radius: 40.0,
                              backgroundImage: NetworkImage('https://images-na.ssl-images-amazon.com/images/I/71NYLpc8gdL._SL1500_.jpg'),

                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 3.0,
                                  end: 3.0
                              ),
                              child: CircleAvatar(
                                radius: 5.0,
                                backgroundColor: Colors.red,
                              ),
                            ),
                          ],



                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'basm mohamed abdel fathi',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),      Container(
                    width: 80.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,

                          children:[
                            CircleAvatar(
                              radius: 40.0,
                              backgroundImage: NetworkImage('https://images-na.ssl-images-amazon.com/images/I/71NYLpc8gdL._SL1500_.jpg'),

                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 3.0,
                                  end: 3.0
                              ),
                              child: CircleAvatar(
                                radius: 5.0,
                                backgroundColor: Colors.red,
                              ),
                            ),
                          ],



                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'basm mohamed abdel fathi',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),      Container(
                    width: 80.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,

                          children:[
                            CircleAvatar(
                              radius: 40.0,
                              backgroundImage: NetworkImage('https://images-na.ssl-images-amazon.com/images/I/71NYLpc8gdL._SL1500_.jpg'),

                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 3.0,
                                  end: 3.0
                              ),
                              child: CircleAvatar(
                                radius: 5.0,
                                backgroundColor: Colors.red,
                              ),
                            ),
                          ],



                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'basm mohamed abdel fathi',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),      Container(
                    width: 80.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,

                          children:[
                            CircleAvatar(
                              radius: 40.0,
                              backgroundImage: NetworkImage('https://images-na.ssl-images-amazon.com/images/I/71NYLpc8gdL._SL1500_.jpg'),

                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 3.0,
                                  end: 3.0
                              ),
                              child: CircleAvatar(
                                radius: 5.0,
                                backgroundColor: Colors.red,
                              ),
                            ),
                          ],



                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'basm mohamed abdel fathi',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),      Container(
                    width: 80.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,

                          children:[
                            CircleAvatar(
                              radius: 40.0,
                              backgroundImage: NetworkImage('https://images-na.ssl-images-amazon.com/images/I/71NYLpc8gdL._SL1500_.jpg'),

                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 3.0,
                                  end: 3.0
                              ),
                              child: CircleAvatar(
                                radius: 5.0,
                                backgroundColor: Colors.red,
                              ),
                            ),
                          ],



                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'basm mohamed abdel fathi',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),      Container(
                    width: 80.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,

                          children:[
                            CircleAvatar(
                              radius: 40.0,
                              backgroundImage: NetworkImage('https://images-na.ssl-images-amazon.com/images/I/71NYLpc8gdL._SL1500_.jpg'),

                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 3.0,
                                  end: 3.0
                              ),
                              child: CircleAvatar(
                                radius: 5.0,
                                backgroundColor: Colors.red,
                              ),
                            ),
                          ],



                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'basm mohamed abdel fathi',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),


                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.bottomEnd,

                    children:[
                      CircleAvatar(
                        radius: 40.0,
                        backgroundImage: NetworkImage('https://images-na.ssl-images-amazon.com/images/I/71NYLpc8gdL._SL1500_.jpg'),

                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                            bottom: 3.0,
                            end: 3.0
                        ),
                        child: CircleAvatar(
                          radius: 5.0,
                          backgroundColor: Colors.red,
                        ),
                      ),
                    ],



                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            'basm mohamed',
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'hello basm  ',
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10.0,
                              ),
                              child: Container(
                                width: 5,
                                height: 5,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                            Text(
                              '02:00 pm',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
            ),
          ],
        ),
      ),
    );
  }
}
