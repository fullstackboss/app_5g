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
          //title: Text("SLIVER"),
          pinned: true,
          expandedHeight: 250,
          collapsedHeight: 70,

          flexibleSpace: Container(
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              gradient: RadialGradient(colors: [
                Color(0Xff7E7EB6),
                Color(0Xff4B4D81),
              ], radius: 0.65),
            ),
            child: SizedBox(
                height: 220,
                child: Hero(
                    tag: this.neonombre,
                    child: Image.asset("assets/images/${this.neofoto}"))),
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
            color: Colors.black,
            thickness: 0.5,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "Nombre del Gordo".toUpperCase(),
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
                  subtitle: Text("Desconocido por el momento lorem ipsum dato"),
                  contentPadding: EdgeInsets.all(0.0),
                ),
                Text(
                  "Mollit dol elit quis excei. Id Lorem exem elit veniam mollit aliqua sit nulla. Voluptate est deserunt aliqua pariatur deserunt ad id do in nulla.",
                  style: TextStyle(fontSize: 15.0),
                  textAlign: TextAlign.left,
                ),
              ],
            )),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 14),
            width: double.infinity,
            child: CupertinoButton(
              child: Text("CONTACTAR"),
              onPressed: () {},
              color: Color(0xff4B4D81),
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          Divider(
            color: Colors.black,
            thickness: 0.5,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "Trabajos realizados".toUpperCase(),
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 300,
            margin: EdgeInsets.only(top: 0),
            child: PageView(
              controller: PageController(viewportFraction: 0.8),
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                Cuadros(miurl: "http://www.yonimus.com/portafolio/fotos/39qm753i2h_sarah_im.jpg",),
                Cuadros(miurl: "http://www.yonimus.com/portafolio/fotos/d91_dog_im.jpg",),
                Cuadros(miurl: "http://www.yonimus.com/portafolio/fotos/vuf_lider1_im.jpg",),
                 Cuadros(miurl: "http://www.yonimus.com/portafolio/fotos/d4_runner_im.jpg",),
                 Cuadros(miurl: "http://www.yonimus.com/portafolio/fotos/39qm753i2h_sarah_im.jpg",),
                Cuadros(miurl: "http://www.yonimus.com/portafolio/fotos/d91_dog_im.jpg",),
                Cuadros(miurl: "http://www.yonimus.com/portafolio/fotos/vuf_lider1_im.jpg",),
                 Cuadros(miurl: "http://www.yonimus.com/portafolio/fotos/d4_runner_im.jpg",),
              ],
            ),
          ),
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
  const Cuadros({Key? key, required this.miurl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        height: 400,
        child: Container(
          child: CachedNetworkImage(imageUrl: miurl, fit: BoxFit.fill,)),
        
      ),
    );
    
  }
}
