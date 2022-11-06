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
      postagens.add(p);
    }

    return postagens;
  }

  _post() async {
    Post post = Post(112, 0, "Titulo", "Corpo da postagem");

    var corpo = jsonEncode(post.toJson());

    var response = await http.post(_urlBase + "/posts",
        headers: {"Content-type": "application/json; charset=UTF-8"},
        body: corpo);

    print(response.statusCode);
    print(response.body);
  }

  _put() async {
    Post put = Post(102, 0, "Titulo alterado", "Corpo da postagem 2");

    var corpo = jsonEncode(put.toJson());

    var response = await http.put(_urlBase + "/posts/2",
        headers: {"Content-type": "application/json; charset=UTF-8"},
        body: corpo);

    print(response.statusCode);
    print(response.body);
  }

  _path() async {
    Post path = Post(102, 0, "", "Corpo da postagem 2");

    var corpo = jsonEncode(path.toJson());

    var response = await http.patch(_urlBase + "/posts/2",
        headers: {"Content-type": "application/json; charset=UTF-8"},
        body: corpo);

    print(response.statusCode);
    print(response.body);
  }

  _delete() async {
    var response = await http.delete(_urlBase + "/posts/1");

    print(response.statusCode);
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Consumo de servico avancado"),
      ),
      body: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: _post, child: const Text("Salvar")),
                  ElevatedButton(
                      onPressed: _put, child: const Text("Atualizar")),
                  ElevatedButton(
                      onPressed: _delete, child: const Text("Remover"))
                ],
              ),
              Expanded(
                  child: FutureBuilder<List<Post>>(
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
                      }))
            ],
          )),
    );
  }
}
