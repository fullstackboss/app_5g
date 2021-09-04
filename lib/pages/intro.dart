import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ionicons/ionicons.dart';

class MyIntro extends StatelessWidget {
  const MyIntro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color(0xffBB2A67),
              Color(0xff4B4D81),
              //Color(0xff4B4D81),
            ])),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                child: SvgPicture.asset("assets/svg/titulo.svg"),
                padding: EdgeInsets.symmetric(horizontal: 80),
              ),
              Container(
                height: 320,
                child: SvgPicture.asset("assets/svg/koko.svg"),
                padding: EdgeInsets.symmetric(horizontal: 60),
              ),
              SizedBox(
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Ionicons.chevron_down),
                  color: Colors.white,
                  iconSize: 40,
                  padding: EdgeInsets.symmetric(vertical: 20),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
