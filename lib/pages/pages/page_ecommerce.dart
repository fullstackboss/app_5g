import 'package:flutter/material.dart';

class MyEmcomerce extends StatelessWidget {
  const MyEmcomerce({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey.shade200,
      child: Center(child: Text("Ecomerce", style: TextStyle(color: Colors.black, fontSize: 18),)),
    );
  }
}