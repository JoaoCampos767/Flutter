import 'package:flutter/material.dart';

class EntradaSwitch extends StatefulWidget {
  @override
  State<EntradaSwitch> createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {
  bool _escolhaUsuario = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de Dados"),
      ),
      body: Container(
        child: Column(children: [
          SwitchListTile(
              title: Text("Receber notificações"),
              value: _escolhaUsuario,
              onChanged: (valor) {
                setState(() {
                  _escolhaUsuario = valor;
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
