import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/home/home.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Colors.red,
        primaryColor: Colors.amberAccent,
        backgroundColor:Colors.black.withOpacity(0.2),
      ),
      home: Home(),
    );
  } 
}