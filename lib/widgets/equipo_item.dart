import 'package:flutter/material.dart';

class MyEquipoItem extends StatelessWidget {
  final String nombregordo;
  final String cargo;
  final String descripcion;
  final String foto;

  const MyEquipoItem({
    Key? key,
    required this.nombregordo,
    required this.cargo,
    required this.descripcion,
    required this.foto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      margin: EdgeInsets.symmetric(vertical: 4, horizontal: 7),
      decoration: BoxDecoration(
          color: Colors.redAccent,
          borderRadius: BorderRadius.circular(8.0),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xff4B4D81),
                Color(0xffBB2A67),
              ])),
      child: Row(
        children: [
          Expanded(
              flex: 5,
              child: Container(
                padding: EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      this.cargo,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Divider(
                      color: Colors.white,
                      endIndent: 150,
                      thickness: 1,
                    ),
                    Text(
                      this.descripcion,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              )),
          Expanded(
            flex: 5,
            child: TweenAnimationBuilder<double>(
              curve: Curves.ease,
              tween: Tween(begin: 1.0, end: 0.0),
              child: Hero(
                tag: this.nombregordo,
                child: Image.asset("assets/images/${this.foto}")),
              duration: const Duration(milliseconds: 500),
              builder: (context, value, child) {
                return Transform.translate(
                  offset: Offset(35.0 * value, 0.0),
                  child: child,
                );
              },
            ),
          ),

          // Stack(
          //   alignment: Alignment.center,
          //   children: [
          //     Container(
          //       width: 230,
          //       height: 100,
          //       child:
          //       Image.asset("assets/images/diseno.png", alignment: Alignment.centerLeft, width: 150,),
          //     ),
          //     Container(
          //       width: 200,
          //       height: 120,
          //       child: Column(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           Text("DISEÑO GRÁFICO", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
          //           Divider(color: Colors.white, endIndent: 150, thickness: 1,),
          //           Text("DISEÑO GRÁFICO", style: TextStyle(fontSize: 14, color: Colors.white,),),
          //         ],
          //       ),
          //     ),
          //   ],
          // ),

          // Expanded(
          //   child: Container(
          //     child: Image.asset("assets/images/demo.png",alignment: Alignment.bottomCenter,),
          //   ),
          // ),
        ],
      ),
    );
  }
}
