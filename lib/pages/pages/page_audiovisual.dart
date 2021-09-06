import 'package:flutter/material.dart';

class MyAudioVisuales extends StatelessWidget {
  const MyAudioVisuales({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey.shade200,
      child: Center(child: Text("Audiovisuales", style: TextStyle(color: Colors.black, fontSize: 18),)),
    );
  }
}