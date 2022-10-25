import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  @override
  _CampState createState() => _CampState();
}

class _CampState extends State<CampoTexto> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de Dados"),
      ),
      body: Column(children: [
        Padding(
          padding: EdgeInsets.all(32),
          child: TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: "Digite um valor"),
            enabled: true,
            style: TextStyle(fontSize: 20, color: Colors.black),
            //obscureText: true,
            onSubmitted: (String texto) {
              print("Valor digitado: " + texto);
            },
            controller: _textEditingController,
          ),
        ),
        ElevatedButton(
            onPressed: () {
              print("Valor digitado: " + _textEditingController.text);
            },
            child: Text("Salvar"))
      ]),
    );
  }
}
