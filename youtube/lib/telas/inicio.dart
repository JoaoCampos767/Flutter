import 'package:flutter/material.dart';
import '../api.dart';
import '../model/video.dart';

class Inicio extends StatefulWidget {
  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  _listarVideos() {
    Api api = Api();
    return api.pesquisar("");
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Video>>(
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
              return const Center(
                child: CircularProgressIndicator(),
              );
              break;
            case ConnectionState.active:
            case ConnectionState.done:
              if (snapshot.hasData) {
                return ListView.separated(
                  itemBuilder: (context, index) {
                    return Column(
                      children: [Text("Teste")],
                    );
                  },
                  separatorBuilder: (constext, index) => const Divider(
                    height: 3,
                    color: Colors.red,
                  ),
                  itemCount: snapshot.data!.length,
                );
              } else {
                return const Center(
                  child: Text("Nenhum dado a ser exibido!"),
                );
              }
              break;
          }
        },
        future: _listarVideos());
  }
}
