import 'package:flutter/material.dart';
import 'package:prototipo_one/pages/inicio.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: MyInicio(),
      theme: ThemeData(
        primaryColor: Color(0xFF252652),
      ),
    );
  }
}