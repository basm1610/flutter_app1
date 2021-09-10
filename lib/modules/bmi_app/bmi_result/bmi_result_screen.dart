import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {
   int? result;
    bool? isMale;
   int? age;

  BmiResultScreen({
  @required this.age,
  @required this.isMale,
  @required this.result,
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'bmi result',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender : ${isMale ! ? 'Female' : 'Male'}',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),

            ),
            Text(
              'Result : $result',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),

            ),
            Text(
              'Age : $age',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),

            ),
          ],
        ),
      ),
    );
  }
}
