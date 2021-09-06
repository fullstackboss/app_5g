import 'package:flutter/material.dart';

class Mydespachos extends StatelessWidget {
  const Mydespachos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey.shade200,
      child: Center(child: Text("Depachos", style: TextStyle(color: Colors.black, fontSize: 18),)),
    );
  }
}