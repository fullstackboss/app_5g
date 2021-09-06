import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:prototipo_one/pages/pages/page_adomicilio.dart';
import 'package:prototipo_one/pages/pages/page_contacto.dart';
import 'package:prototipo_one/pages/pages/page_proyectos.dart';
import 'package:prototipo_one/pages/pages/page_soluciones.dart';

class MyBotomNavigation extends StatefulWidget {
  const MyBotomNavigation({Key? key}) : super(key: key);

  @override
  _MyBotomNavigationState createState() => _MyBotomNavigationState();
}

class _MyBotomNavigationState extends State<MyBotomNavigation> {
  int index = 0;
  List<Widget> milista = [
    MySoluciones(),
    MyProyectos(),
    Mydespachos(),
    MyContacto(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade200,
      appBar: AppBar(
        title: Text("Titulo"),
      ),
      body: milista[index],
      floatingActionButton: FloatingActionButton(
        mini: true,
        onPressed: () {},
        child: Icon(Ionicons.add_outline),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        notchMargin: 3,

        child: SizedBox(
          height: 60,
          child: BottomNavigationBar(
          //backgroundColor: Theme.of(context).primaryColor,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: true,
            showUnselectedLabels: false,
        
            currentIndex: index,
            onTap: (val) {
              setState(() {
                index = val;
                print(index);
              });
            },
            iconSize: 22,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            selectedItemColor: Colors.purple,
            selectedLabelStyle: TextStyle(color: Colors.yellow),
            items: [
              BottomNavigationBarItem(
                icon: Icon(Ionicons.home_outline,
                    color: index == 0 ? Colors.purple : Colors.black,),
                label: "Soluciones",
              ),
              BottomNavigationBarItem(
                icon: Icon(Ionicons.desktop_outline,
                    color: index == 1 ? Colors.purple : Colors.black),
                label: "Proyectos",
              ),
              
              BottomNavigationBarItem(
                icon: Icon(Ionicons.people_outline,
                    color: index == 2 ? Colors.purple : Colors.black),
                label: "Equipo",
              ),
              BottomNavigationBarItem(
                icon: Icon(Ionicons.mail_outline,
                    color: index == 3 ? Colors.purple : Colors.black),
                label: "Contacto",
              ),
            ],
          ),
        ),
      ),

      // child:
      // BottomAppBar(
      //   shape: CircularNotchedRectangle(),
      //   clipBehavior: Clip.antiAlias,
      //   notchMargin: 8,
    );
  }
}
