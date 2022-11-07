import 'package:flutter/material.dart';

class Inicio extends StatefulWidget {
  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
          child: Text(
        "Ínicio",
        style: TextStyle(fontSize: 25),
      )),
    );
  }
}
