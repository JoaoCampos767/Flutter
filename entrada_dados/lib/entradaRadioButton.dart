import 'package:flutter/material.dart';

class EntradaRadioBUtton extends StatefulWidget {
  @override
  State<EntradaRadioBUtton> createState() => _EntradaRadioBUttonState();
}

class _EntradaRadioBUttonState extends State<EntradaRadioBUtton> {
  String _escolhaUsuario = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Entrada de Dados"),
      ),
      body: Container(
        child: Column(children: [
          RadioListTile(
              title: Text("Masculino"),
              value: "M",
              groupValue: _escolhaUsuario,
              onChanged: (escolha) {
                setState(() {
                  _escolhaUsuario = escolha!;
                });
              }),
          RadioListTile(
              title: Text("Feminino"),
              value: "F",
              groupValue: _escolhaUsuario,
              onChanged: (escolha) {
                setState(() {
                  _escolhaUsuario = escolha!;
                });
              }),
          ElevatedButton(
              onPressed: () {
                print("Resultado: " + _escolhaUsuario.toString());
              },
              child: const Text(
                "Salvar",
                style: TextStyle(fontSize: 20),
              ))
        ]),
      ),
    );
  }
}





/*
          Text("Masculino"),
          Radio(
              value: "M",
              groupValue: _escolhaUsuario,
              onChanged: (escolha) {
                setState(() {
                  _escolhaUsuario = escolha!;
                });
              }),
          Text("Feminino"),
          Radio(
              value: "F",
              groupValue: _escolhaUsuario,
              onChanged: (escolha) {
                setState(() {
                  _escolhaUsuario = escolha!;
                });
              })*/