import 'package:flutter/material.dart';

class Biblioteca extends StatefulWidget {
  @override
  State<Biblioteca> createState() => _BibliotecaState();
}

class _BibliotecaState extends State<Biblioteca> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
          child: Text(
        "Biblioteca",
        style: TextStyle(fontSize: 25),
      )),
    );
  }
}
