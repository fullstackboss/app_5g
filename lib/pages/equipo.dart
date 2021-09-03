import 'package:flutter/material.dart';
import 'package:prototipo_one/pages/equipo_interna.dart';
import 'package:prototipo_one/pages/menu_setting.dart';
import 'package:prototipo_one/widgets/equipo_item.dart';

class MyEquipo extends StatelessWidget {
  final myProducts = List<String>.generate(10, (i) => 'Product $i');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MyMenuDrawer(),
        appBar: AppBar(
          title: Text('El Equipo'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 5, bottom: 5),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyEquipoInterna(neonombre: "zangief", neofoto: "team_zangief.png",)),
                    );
                  },
                  child: MyEquipoItem(
                    nombregordo: "zangief",
                    cargo: "DISENADOR",
                    descripcion: "Diseños con sopita",
                    foto: "team_zangief.png",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyEquipoInterna(neonombre: "koko", neofoto: "team_koko.png",)),
                      );
                  },
                  child: MyEquipoItem(
                    nombregordo: "koko",
                    cargo: "DESARROLLO NINJA",
                    descripcion: "Diseños con sopita",
                    foto: "team_koko.png",
                  ),
                ),
                GestureDetector(
                 onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyEquipoInterna(neonombre: "shulo", neofoto: "team_shulo.png",)),
                      );
                  },
                  child: MyEquipoItem(
                    nombregordo: "shulo",
                    cargo: "DESARROLLO",
                    descripcion: "Diseños con sopita",
                    foto: "team_shulo.png",
                  ),
                ),
                MyEquipoItem(
                  nombregordo: "yo",
                  cargo: "VIDEO",
                  descripcion: "Diseños con sopita",
                  foto: "team_yo.png",
                ),
                MyEquipoItem(
                  nombregordo: "mono",
                  cargo: "FOTOGRAFÍA",
                  descripcion: "Diseños con sopita",
                  foto: "team_mono.png",
                ),
                MyEquipoItem(
                  nombregordo: "haishi",
                  cargo: "VIDEOJUEGOS",
                  descripcion: "Diseños con sopita",
                  foto: "team_haishi.png",
                ),
              ],
            ),
          ),
        ));
  }
}
