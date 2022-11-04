import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<Map> _recuperarPreco() async {
    String url = "https://blockchain.info/ticker";
    http.Response response = await http.get(url);

    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map>(
        future: _recuperarPreco(),
        builder: (context, snapshot) {
          String result = "";

          switch (snapshot.connectionState) {
            case ConnectionState.none:
              break;
            case ConnectionState.waiting:
              result = "Carregando...";
              break;
            case ConnectionState.active:
              break;
            case ConnectionState.done:
              if (snapshot.hasError) {
                result = "Erro ao carregar os dados";
              } else {
                double valor = snapshot.data!["BRL"]["buy"];
                result = "Preco bitcoin: ${valor.toString()}";
              }
              break;
          }

          return Center(
            child: Text(result),
          );
        });
  }
}
