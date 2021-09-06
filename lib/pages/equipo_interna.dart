import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class MyEquipoInterna extends StatelessWidget {
  final String neonombre;
  final String neofoto;
  const MyEquipoInterna({
    Key? key,
    required this.neonombre,
    required this.neofoto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          pinned: true,
          expandedHeight: 230,
          collapsedHeight: 120,
          automaticallyImplyLeading: false,
          flexibleSpace: Container(
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xffBB2A67),
                Color(0xff4B4D81),
              ],stops: [0.5,0.5]),
            ),
            child: Container(
              height: 200,
                child: Row(
                  children: [
                    Expanded(
                      child: ListTile(
                        title: Text(
                          "LOREM IPSUM",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, color: Colors.white),
                        ),
                        subtitle: Text(
                          "Desconocido ment",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Expanded(
                        child: Hero(
                          tag: this.neonombre,
                          child: Image.asset("assets/images/${this.neofoto}"))),
                  ],
              ),
            ),
          ),
        ),
        SliverList(delegate: SliverChildListDelegate(_milista()))
      ],
    )));
  }
}

List<Widget> _milista() {
  List<Container> _cajas = [];
  _cajas.add(
    Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child: Icon(
                            Ionicons.heart,
                            color: Colors.red,
                          )),
                      Expanded(flex: 6, child: SizedBox()),
                      Expanded(flex: 2, child: Icon(Ionicons.mail_outline)),
                      Expanded(
                          flex: 2,
                          child: Icon(Ionicons.checkmark_circle_outline)),
                      Expanded(flex: 2, child: Icon(Ionicons.chatbox_outline)),
                    ],
                  ),
                ],
              )),
          Divider(
            thickness: 0.5,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "Datos del Gordo".toUpperCase(),
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff4B4D81),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 0, bottom: 10, right: 30, left: 30),
            child: Center(
                child: Column(
              children: [
                ListTile(
                  title: Text(
                    "Profesión:",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  subtitle: Text("Desconocido mento lorem ipsum dato"),
                  contentPadding: EdgeInsets.all(0.0),
                  leading: Icon(Ionicons.book_outline),
                ),
                ListTile(
                  title: Text(
                    "Comida Favorita:",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  subtitle: Text("Desconocido mento lorem ipsum dato"),
                  contentPadding: EdgeInsets.all(0.0),
                  leading: Icon(Ionicons.restaurant_outline),
                ),
                ListTile(
                  title: Text(
                    "Hobbies:",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  subtitle: Text("Desconocido mento lorem ipsum dato"),
                  contentPadding: EdgeInsets.all(0.0),
                  leading: Icon(Ionicons.tv_outline),
                ),
                ListTile(
                  title: Text(
                    "Juegos favoritos:",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  subtitle: Text("Desconocido mento lorem ipsum dato"),
                  contentPadding: EdgeInsets.all(0.0),
                  leading: Icon(Ionicons.game_controller_outline),
                ),
                ListTile(
                  title: Text(
                    "Deporte:",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  subtitle: Text("Desconocido mento lorem ipsum dato"),
                  contentPadding: EdgeInsets.all(0.0),
                  leading: Icon(Ionicons.speedometer_outline),
                ),
              ],
            )),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 14),
            width: double.infinity,
            child: CupertinoButton(
              child: Text("VER TRABAJOS"),
              onPressed: () {},
              color: Color(0xff4B4D81),
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          SizedBox(
            height: 130,
          )
        ],
      ),
    ),
  );
  return _cajas;
}

// List<Widget> _milista() {
//   List<Card> _cards = [];
//   for (int i = 1; i < 12; i++) {
//     _cards.add(
//       Card(
//         color: Colors.amber.shade200,
//         margin: EdgeInsets.all(4.0),
//         child: ListTile(
//           title: Text("ITEM $i"),
//           subtitle: Text("Lorem ipsum"),
//           contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 12),
//         ),
//       ),
//     );
//   }
//   return _cards;
// }

class Cuadros extends StatelessWidget {
  final String miurl;
  const Cuadros({Key? key, required this.miurl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        height: 400,
        child: Container(
            child: CachedNetworkImage(
          imageUrl: miurl,
          fit: BoxFit.fill,
        )),
      ),
    );
  }
}
