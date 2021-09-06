import 'package:flutter/material.dart';

class MyContacto extends StatelessWidget {
  const MyContacto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey.shade200,
      child: Center(child: Text("Contaco", style: TextStyle(color: Colors.black, fontSize: 18),)),
    );
  }
}