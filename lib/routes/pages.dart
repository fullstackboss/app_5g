import 'package:flutter/material.dart';
import 'package:prototipo_one/pages/menu.dart';
import 'package:prototipo_one/routes/routes.dart';

abstract class Pages {
  static const String paginainicio = Routes.intro; // Definimos la pagina de inicio
  static Map<String, Widget Function(BuildContext)> routes = {
    // Asignacion Corta
    Routes.menu: (_) => MyMenu(),
};
}