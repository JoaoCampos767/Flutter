import 'package:flutter/material.dart';

class EntradaCheckbox extends StatefulWidget {
  @override
  EntradaCheckboxState createState() => EntradaCheckboxState();
}

class EntradaCheckboxState extends State<EntradaCheckbox> {
  bool _comidaBrasileira = false;
  bool _comidaMexicana = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de Dados"),
      ),
      body: Container(
        child: Column(children: [
          CheckboxListTile(
              title: Text("Comida Brasileira"),
              subtitle: Text("A melhor comida do mundo"),
              activeColor: Colors.orange,
              //secondary: Icon(Icons.add_box),
              value: _comidaBrasileira,
              onChanged: (valor) {
                setState(() {
                  _comidaBrasileira = valor!;
                });
              }),
          CheckboxListTile(
              title: Text("Comida Mexicana"),
              subtitle: Text("A melhor comida do mundo"),
              activeColor: Colors.red,
              //secondary: Icon(Icons.add_box),
              value: _comidaMexicana,
              onChanged: (valor) {
                setState(() {
                  _comidaMexicana = valor!;
                });
              }),
          ElevatedButton(
              onPressed: () {
                print("Comida Brasileira: " +
                    _comidaBrasileira.toString() +
                    "\nComida Mexicana: " +
                    _comidaMexicana.toString());
              },
              child: Text(
                "Salvar",
                style: TextStyle(fontSize: 20),
              ))
          /*Text("Comida Brasileira"),
          Checkbox(
              value: _estaSelecionado,
              onChanged: (valor) {
                setState(() {
                  _estaSelecionado = valor!;
                });
              })*/
        ]),
      ),
    );
  }
}
