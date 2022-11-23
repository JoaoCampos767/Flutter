import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _textoSalvo = "Nada Salvo!";

  final TextEditingController _controllerCampo = TextEditingController();

  _salvar() async {
    String valorDigitado = _controllerCampo.text;

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString("nome", valorDigitado);
  }

  _recuperar() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _textoSalvo = prefs.getString("nome") ?? "Sem valor salvo!";
    });
  }

  _remover() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove("nome");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Manipulação de Dados"),
      ),
      body: Container(
        padding: const EdgeInsets.all(32),
        child: Column(children: [
          Text(
            _textoSalvo,
            style: TextStyle(fontSize: 20),
          ),
          TextField(
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(labelText: "Digite algo"),
            controller: _controllerCampo,
          ),
          Row(
            children: [
              ElevatedButton(
                  onPressed: _salvar,
                  child: const Text("Salvar",
                      style: TextStyle(
                        fontSize: 20,
                      ))),
              ElevatedButton(
                  onPressed: _recuperar,
                  child: const Text("Recuperar",
                      style: TextStyle(
                        fontSize: 20,
                      ))),
              ElevatedButton(
                  onPressed: _remover,
                  child: const Text("Remover",
                      style: TextStyle(
                        fontSize: 20,
                      )))
            ],
          )
        ]),
      ),
    );
  }
}
