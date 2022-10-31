import 'package:cara_coroa/resultado.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Jogar extends StatefulWidget {
  @override
  State<Jogar> createState() => _JogarState();
}

class _JogarState extends State<Jogar> {
  void _exibirResultado() {
    var itens = ["cara", "coroa"];
    var number = Random().nextInt(itens.length);
    var result = itens[number];

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Resultado(result)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset("images/logo.png"),
          GestureDetector(
            onTap: _exibirResultado,
            child: Image.asset("images/botao_jogar.png"),
          )
        ],
      )),
    );
  }
}
