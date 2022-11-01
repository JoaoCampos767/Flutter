import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _controllerCep = TextEditingController();
  String _resultado = "Resultado";

  _recuperarCep() async {
    String cepDigitado = _controllerCep.text;
    String url = "https://viacep.com.br/ws/${cepDigitado}/json/";

    http.Response response;

    response = await http.get(url);
    Map<String, dynamic> retorno = jsonDecode(response.body);
    String logradouro = retorno["logradouro"];
    String complemento = retorno["complemento"];
    String bairro = retorno["bairro"];
    String localidade = retorno["localidade"];

    setState(() {
      _resultado = "${logradouro}, ${complemento}, ${bairro}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Consumo de serviços web")),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(children: [
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: "Digite o cep"),
            style: TextStyle(fontSize: 20),
            controller: _controllerCep,
          ),
          ElevatedButton(onPressed: _recuperarCep, child: Text("Clique aqui")),
          Text(_resultado),
        ]),
      ),
    );
  }
}
