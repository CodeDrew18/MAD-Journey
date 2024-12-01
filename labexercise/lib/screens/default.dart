import 'package:flutter/material.dart';
import 'package:labexercise/screens/my_Screens3.dart';

void main(){
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen3(),
      debugShowCheckedModeBanner: false,
    );
  }
}