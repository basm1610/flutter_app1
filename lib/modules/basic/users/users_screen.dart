import 'package:flutter/material.dart';
// class UserModel {
//   final  int id;
//   final String name;
//   final String phone;
//
//   UserModel({
//     @required this.id,
//     @required this.phone,
//     @required this.name,
//   });
// }
//
// class UsersScreen extends StatelessWidget {
//
//       List<UserModel>users=
//       [
//         UserModel(
//           id:1,
//           name:'basm',
//           phone: '01550513991'
//           ),
//         UserModel(
//             id:2,
//             name:'mohamed',
//             phone: '01556513991'
//         ),
//         UserModel(
//             id:3,
//             name:'ali',
//             phone: '6236523'
//         ),
//         UserModel(
//             id:4,
//             name:'ahmed',
//             phone: '65239562'
//         ),
//         UserModel(
//             id:5,
//             name:'adel',
//             phone: '9463641'
//         ),
//
//       ],
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Users',
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context,index)=> BuildUserItem(),
          separatorBuilder: (context,index)=>Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey[300],
          ),
          itemCount: 15,
      ),
    );

  }
Widget BuildUserItem()=>Padding(
  padding: const EdgeInsets.all(20.0),
  child: Row(
    children: [
      CircleAvatar(
        radius: 25.0,
        child: Text(
          '1',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),


      ),
      SizedBox(
        width: 20,
      ),
      Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'basm moahmed',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '01550513991',
            style: TextStyle(
              color: Colors.blueGrey,
            ),
          ),
        ],
      ),
    ],
  ),
);

