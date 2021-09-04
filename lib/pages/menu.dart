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
              Color(0xffffffff),
            ],
                stops: [
              0.49,
              0.49
            ])),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 260,
                padding: EdgeInsets.only(top: 30, left: 30, right: 30),
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "BIENVENIDO A LA APLICACIÓN".toUpperCase(),
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
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Cillum ipsum culpa ut mfugiat officia elit pariatur officia ullamco lorem, ipsum facto meruem abv.",
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    // TextField(
                    //   decoration: InputDecoration(
                    //       contentPadding:
                    //           EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                    //       border: OutlineInputBorder(
                    //         borderRadius: BorderRadius.circular(30.0),
                    //       ),
                    //       filled: true,
                    //       hintStyle: TextStyle(color: Colors.grey[800]),
                    //       hintText: "Ingresar...",
                    //       fillColor: Colors.white),
                    // )
                  ],
                ),
              ),
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
