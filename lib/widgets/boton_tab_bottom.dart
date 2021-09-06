import 'package:flutter/material.dart';

class MyBotonTabItem extends StatelessWidget {
  final String titulo;
  final IconData icono;
  const MyBotonTabItem({Key? key, required this.titulo, required this.icono}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Icon(icono),
          Text(titulo),
        ],
      ),
    );
  }
}
