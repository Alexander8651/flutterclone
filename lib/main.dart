import 'package:flutter/material.dart';
import 'bottonnavigate.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  //this is the main in the app
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //Contain bottonnavigate
      home: BottonNavigate(),
    );
  }
}