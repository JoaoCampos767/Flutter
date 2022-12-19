import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  _exibirCadastro() {
    TextEditingController _tituloController = TextEditingController();
    TextEditingController _descricaoController = TextEditingController();

    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Adicionar anotação"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: _tituloController,
                  autofocus: true,
                  decoration: const InputDecoration(
                      labelText: "Título", hintText: "Digite título"),
                ),
                TextField(
                  controller: _descricaoController,
                  autofocus: true,
                  decoration: const InputDecoration(
                      labelText: "Descrição", hintText: "Digite descrição"),
                )
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Cancelar")),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Salvar"))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Minhas anotações"),
        backgroundColor: Colors.orange,
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _exibirCadastro();
        },
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        child: Icon(Icons.add),
      ),
    );
  }
}
