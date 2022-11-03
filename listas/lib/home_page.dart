import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePagetState();
}

class _HomePagetState extends State<HomePage> {
  List _itens = [];

  void _carregaItens() {
    for (int i = 0; i < -10; i++) {
      Map<String, dynamic> item = Map();
      item["titulo"] = "Titulo ${i} Lorem ipsum dolor sit amet";
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
            title: Text(_itens[indice]["titulo"].toString()),
            subtitle: Text(_itens[indice]["descricao"].toString()),
          );
        },
      ),
    );
  }
}
