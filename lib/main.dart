import 'package:flutter/material.dart';
import 'package:shoppingapp/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() {
    return new MyAppState();

  }
  

}
class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp( 
      title: 'Shopping App',
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  } //build
} //myapp class
