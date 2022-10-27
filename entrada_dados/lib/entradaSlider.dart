import 'package:flutter/material.dart';

class EntradaSlider extends StatefulWidget {
  @override
  State<EntradaSlider> createState() => _EntradaSliderState();
}

class _EntradaSliderState extends State<EntradaSlider> {
  double valor = 10;
  String label = "Valor selecionado";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de Dados"),
      ),
      body: Container(
        padding: EdgeInsets.all(60),
        child: Column(children: [
          Slider(
              value: valor,
              min: 0,
              max: 100,
              label: label,
              divisions: 10,
              activeColor: Colors.orange,
              inactiveColor: Colors.grey,
              onChanged: (novoValor) {
                setState(() {
                  valor = novoValor;
                  label = "Valor selecionado " + novoValor.toString();
                });
              }),
          ElevatedButton(
              onPressed: () {
                print("Resultado: " + valor.toString());
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
