import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:prototipo_one/pages/equipo.dart';

class MyIconMenu extends StatelessWidget {
  const MyIconMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MyEquipo()),
        );
      },
      child: Container(
        decoration: BoxDecoration(
            // color: Colors.blueGrey,
            ),
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Container(
          padding: EdgeInsets.all(20.0),
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
            color: Colors.white
          ),
          child: Column(
            children: [
              //Image.asset("assets/images/koko.png"),
              Icon(
                Ionicons.mail_outline,
                size: 64,
                color: Color(0xffBB2A67),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Lorem ipsum",
                style: TextStyle(color: Color(0xffBB2A67)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
