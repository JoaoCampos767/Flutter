import 'dart:html';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePagetState();
}

class _HomePagetState extends State<HomePage> {
  List _itens = [];

  void _carregaItens() {
    _itens = [];
    for (int i = 0; i <= 10; i++) {
      Map<String, dynamic> item = Map();
      item["titulo"] = 'Titulo ${i} Lorem ipsum dolor sit amet';
      item["descricao"] = "Descricao ${i} Lorem ipsum dolor sit amet";
      _itens.add(item);
    }
  }

  @override
  Widget build(BuildContext context) {
    _carregaItens();

    return Scaffold(
      appBar: AppBar(title: Text("Lista")),
      body: ListView.builder(
        itemCount: _itens.length,
        itemBuilder: (context, indice) {
          return ListTile(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text(_itens[indice]["titulo"]),
                      titlePadding: const EdgeInsets.all(20),
                      titleTextStyle:
                          const TextStyle(fontSize: 20, color: Colors.orange),
                      content: Text(_itens[indice]["descricao"]),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("Sim")),
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("Nao"))
                      ],
                    );
                  });
            },
            title: Text(_itens[indice]["titulo"]),
            subtitle: Text(_itens[indice]["descricao"]),
          );
        },
      ),
    );
  }
}
