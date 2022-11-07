import 'package:flutter/material.dart';
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

  @override
  Widget build(BuildContext context) {
    List<Widget> telas = [Inicio(), EmAlta(), Inscricoes(), Biblioteca()];

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
              onPressed: () {
                print("video");
              },
              icon: const Icon(Icons.videocam)),
          IconButton(
              onPressed: () {
                print("pesquisa");
              },
              icon: const Icon(Icons.search)),
          IconButton(
              onPressed: () {
                print("conta");
              },
              icon: const Icon(Icons.account_circle))
        ],
      ),
      body: telas[_indiceAtual],
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
