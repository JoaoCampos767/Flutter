import 'package:consumo_servico_avanc/post.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _urlBase = "https://jsonplaceholder.typicode.com";

  Future<List<Post>> _recuperarPostagens() async {
    http.Response response = await http.get(_urlBase + "/posts");
    var dadosJson = json.decode(response.body);

    // ignore: deprecated_member_use, prefer_collection_literals
    List<Post> postagens = [];

    for (var post in dadosJson) {
      Post p = Post(post["userId"], post["id"], post["title"], post["body"]);
      postagens.add( p );
    }

    return postagens;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Consumo de servico avancado"),
      ),
      body: FutureBuilder<List<Post>>(
          future: _recuperarPostagens(),
          builder: (context, snapshot) {
            String result = "";

            switch (snapshot.connectionState) {
              case ConnectionState.none:
                break;
              case ConnectionState.waiting:
                return const Center(
                  child: CircularProgressIndicator(),
                );
                break;
              case ConnectionState.active:
                break;
              case ConnectionState.done:
                if (snapshot.hasError) {
                  result = "Erro ao tentar carregar";
                } else {
                  return ListView.builder(
                    itemCount: snapshot.data?.length,
                    itemBuilder: (context, index) {
                      List<Post>? lista = snapshot.data;
                      Post post = lista![index];

                      return ListTile(
                        title: Text(post.title),
                        subtitle: Text(post.id.toString()),
                      );
                    },
                  );
                }
                break;
            }

            return Center(
              child: Text(result),
            );
          }),
    );
  }
}
