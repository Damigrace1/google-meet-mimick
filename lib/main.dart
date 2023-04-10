import 'package:flutter/material.dart';
import 'package:meetmimick/home.dart';

import 'color_pallete.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: HomeScreen(),
        theme: ThemeData(
          //primarySwatch: Colors.blue,
          appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(color: Colors.white),
            color: Color.fromARGB(255, 34, 34, 36), //<-- SEE HERE
          ),
        ));
  }
}
