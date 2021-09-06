import 'package:flutter/material.dart';
import 'package:prototipo_one/widgets/icon_menu.dart';

class MyMenu extends StatelessWidget {
  const MyMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      backgroundColor: Color(0xff6E4B9A),
      body: SingleChildScrollView(
        child: Container(
          // decoration: BoxDecoration(
          //     gradient: LinearGradient(
          //         begin: Alignment.topCenter,
          //         end: Alignment.bottomCenter,
          //         colors: [
          //       Color(0xff6E4B9A),
          //       Color(0xffffffff),
          //     ],
          //         stops: [
          //       0.49,
          //       0.49
          //     ])),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Color(0xff993B7F),
                Color(0xff4B4D81),
              ],
                  stops: [
                0.1,
                0.95
              ])),
                  height: 280,
                  padding: EdgeInsets.only(top: 50, left: 30, right: 30, bottom: 0),
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "BIENVENIDO".toUpperCase(),
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w800
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
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Cillum ipsum culpa ut mfugiat officia elit pariatur officia ullamco lorem, ipsum facto meruem abv.",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.white,
                          height: 1.4,
                        ),textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            filled: true,
                            hintStyle: TextStyle(color: Colors.grey[800]),
                            hintText: "Ingresar...",
                            fillColor: Colors.white),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Color(0xff4B4D81),
                Color(0xffffffff),
              ],
                  stops: [
                0.17,
                0.17
              ])),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                  child: Table(
                    
                    children: [
                      TableRow(
                        children: [
                        MyIconMenu(imagehome: "home_ico_ser_tec.png", optionhome: "Soluciones Tecnologicas",),
                        MyIconMenu(imagehome: "home_ico_2.png", optionhome: "Seguimiento de Proyectos",),
                      ]),
                      TableRow(children: [
                        MyIconMenu(imagehome: "home_ico_5.png", optionhome: "Soluciones Ecommerce",),
                        MyIconMenu(imagehome: "home_ico_4.png", optionhome: "Despacho a domicilio",),
                      ]),
                      TableRow(children: [
                        MyIconMenu(imagehome: "home_ico_1.png", optionhome: "Produccion Audiovisual",),
                        MyIconMenu(imagehome: "home_ico_equipo.png", optionhome: "Equipo especializado",),
                      ]),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
