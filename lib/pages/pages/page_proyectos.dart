import 'package:flutter/material.dart';

class MyProyectos extends StatelessWidget {
  const MyProyectos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey.shade200,
      child: Center(child: Text("Proyectos", style: TextStyle(color: Colors.black, fontSize: 18),)),
    );
  }
}