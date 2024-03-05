import 'package:exam/Moody/card.dart';
import 'package:flutter/material.dart';

import 'Moody/Screen3.dart';
import 'Moody/home.dart';
import 'Moody/screen2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:HomePage.routeName ,
      routes: {
        HomePage.routeName:(context) => HomePage(),
        Screen2.routeName:(context) => Screen2(),
        Screen3.routeName:(context) => Screen3(),





      },


    );
  }
}


