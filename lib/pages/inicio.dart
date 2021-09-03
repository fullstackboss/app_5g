import 'package:flutter/material.dart';
import 'package:prototipo_one/pages/intro.dart';
import 'package:prototipo_one/pages/menu.dart';

class MyInicio extends StatelessWidget {
  const MyInicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: [
          MyIntro(),
          MyMenu(),
        ],
      ),
    );
  }
}