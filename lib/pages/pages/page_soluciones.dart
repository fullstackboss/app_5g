import 'package:flutter/material.dart';

class MySoluciones extends StatelessWidget {
  const MySoluciones({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey.shade200,
      child: Center(child: Text("Soluciones", style: TextStyle(color: Colors.black, fontSize: 18),)),
    );
  }
}
