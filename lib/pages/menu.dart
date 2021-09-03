import 'package:flutter/material.dart';
import 'package:prototipo_one/widgets/icon_menu.dart';

class MyMenu extends StatelessWidget {
  const MyMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4B4D81),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Color(0xff4B4D81),
            Color(0xff993B7F),
            ],)
          ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "OPCIONES".toUpperCase(),
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                  width: 30,
                  child: Divider(
                    color: Colors.white,
                    thickness: 2.0,
                  )),
              Table(
                children: [
                  TableRow(children: [
                    MyIconMenu(),
                    MyIconMenu(),
                  ]),
                  TableRow(children: [
                    MyIconMenu(),
                    MyIconMenu(),
                  ]),
                  TableRow(children: [
                    MyIconMenu(),
                    MyIconMenu(),
                  ])
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
