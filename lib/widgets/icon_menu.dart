import 'package:flutter/material.dart';
import 'package:prototipo_one/pages/pages/page_soluciones.dart';
import 'package:prototipo_one/widgets/navigation_pages.dart';

class MyIconMenu extends StatelessWidget {
  final String imagehome;
  final String optionhome;
  const MyIconMenu(
      {Key? key, required this.imagehome, required this.optionhome})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          // color: Colors.blueGrey,
          ),
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      child: GestureDetector(
        onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MyBotomNavigation()),
        );
      },
        child: Container(
          padding: EdgeInsets.all(18.0),
          decoration: BoxDecoration(
              //color: Color(0xffA5A2FD),
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 6,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
              color: Colors.white),
          child: Column(
            children: [
              //Image.asset("assets/images/koko.png"),
              Image.asset(
                "assets/images/${this.imagehome}",
                height: 50,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                this.optionhome,
                style: TextStyle(
                  color: Color(0xff000000),
                ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
