import 'package:flutter/material.dart';
import 'package:prototipo_one/pages/equipo_interna.dart';
import 'package:prototipo_one/pages/menu_setting.dart';
import 'package:prototipo_one/widgets/equipo_item.dart';

class MyEquipo extends StatelessWidget {
  // Generate a dummy list
  // Map milista = {
  //   'nombre':'Jonie',
  //   'cargo':'Disenador',
  //   'foto':'foto'
  //   };

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
                        MaterialPageRoute(builder: (context) => MyEquipoInterna()),
                      );
                  },
                  child: 
                  MyEquipoItem(
                    nomgordo: "zangief",
                    cargo: "DISENADOR",
                    descripcion: "Diseños con sopita",
                    foto: "team_zangief.png",
                  ),
                ),
                MyEquipoItem(
                  nomgordo: "koko",
                  cargo: "DESARROLLO NINJA",
                  descripcion: "Diseños con sopita",
                  foto: "team_koko.png",
                ),
                MyEquipoItem(
                  nomgordo: "shulo1",
                  cargo: "DESARROLLO",
                  descripcion: "Diseños con sopita",
                  foto: "team_shulo.png",
                ),
                MyEquipoItem(
                  nomgordo: "yo",
                  cargo: "VIDEO",
                  descripcion: "Diseños con sopita",
                  foto: "team_yo.png",
                ),
                MyEquipoItem(
                  nomgordo: "mono",
                  cargo: "FOTOGRAFÍA",
                  descripcion: "Diseños con sopita",
                  foto: "team_mono.png",
                ),
                MyEquipoItem(
                  nomgordo: "haishi",
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
