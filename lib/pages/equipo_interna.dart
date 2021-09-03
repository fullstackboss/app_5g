import 'package:flutter/material.dart';



class MyEquipoInterna extends StatelessWidget {
  final String neonombre;
  final String neofoto;
  const MyEquipoInterna({
    Key? key, required this.neonombre, required this.neofoto,
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
                Color(0XffBB2A67),
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
        ))
    );
  }
}

List<Widget> _milista() {
  List<Card> _cards = [];
  for (int i = 1; i < 12; i++) {
    _cards.add(
      Card(
        color: Colors.amber.shade200,
        margin: EdgeInsets.all(4.0),
        child: ListTile(
          title: Text("ITEM $i"),
          subtitle: Text("Lorem ipsum"),
          contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 12),
        ),
      ),
    );
  }
  return _cards;
}
