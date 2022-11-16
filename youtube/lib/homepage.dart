import 'package:flutter/material.dart';
import 'package:youtube/CustomSearchDelegate.dart';
import 'package:youtube/telas/biblioteca.dart';
import 'package:youtube/telas/emalta.dart';
import 'package:youtube/telas/inicio.dart';
import 'package:youtube/telas/inscricoes.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _indiceAtual = 0;
  String _resultado = "";

  @override
  Widget build(BuildContext context) {
    List<Widget> telas = [
      Inicio(_resultado),
      EmAlta(),
      Inscricoes(),
      Biblioteca()
    ];

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.grey, opacity: 0.8),
        backgroundColor: Colors.white,
        title: Image.asset(
          "images/youtube.png",
          width: 100,
          height: 25,
        ),
        actions: [
          IconButton(
              onPressed: () async {
                String? res = await showSearch(
                    context: context, delegate: CustomSearchDelegate());
                setState(() {
                  _resultado = res!;
                });
              },
              icon: const Icon(Icons.search)),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: telas[_indiceAtual],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _indiceAtual,
          onTap: (i) {
            setState(() {
              _indiceAtual = i;
            });
          },
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.red,
          items: const [
            BottomNavigationBarItem(label: 'Início', icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                label: 'Em alta', icon: Icon(Icons.whatshot)),
            BottomNavigationBarItem(
                label: 'Inscrições', icon: Icon(Icons.subscriptions)),
            BottomNavigationBarItem(
                label: 'Biblioteca', icon: Icon(Icons.folder))
          ]),
    );
  }
}
