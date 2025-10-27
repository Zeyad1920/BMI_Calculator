import 'package:flutter/material.dart';
class AppBarBmi extends StatelessWidget {
  const AppBarBmi({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return   Container(
      width: double.infinity,
            height: 60,
            color: Color(0xff04061D),
            padding: EdgeInsets.only(left: 16, top: 16, bottom: 16),
            child: Text('BMI CALCULATOR',style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),),
          );
  }
}

