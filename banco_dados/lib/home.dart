import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  _recuperarBancoDados() async {
    final caminhoBancoDados = await getDatabasesPath();
    final localBancoDados = join(caminhoBancoDados, 'banco.db');

    var bd = await openDatabase(localBancoDados, version: 1,
        onCreate: (db, dbVersao) {
      String sql =
          "CREATE TABLE usuarios(id INTEGER PRIMARY KEY AUTOINCREMENT, nome VARCHAR, idade INTEGER)";

      db.execute(sql);
    });

    return bd;
  }

  _salvar() async {
    Database bd = await _recuperarBancoDados();

    Map<String, dynamic> dadosUsuario = {
      "nome": "João",
      "idade": 22,
    };
    bd.insert("usuarios", dadosUsuario);
  }

  _listarUsuarios() async {
    Database bd = await _recuperarBancoDados();

    String sql = "SELECT * FROM usuarios";
    List usuarios = await bd.rawQuery(sql);

    for (var usuario in usuarios) {}
  }

  _recuperarUsuario(int id) async {
    Database bd = await _recuperarBancoDados();

    String sql = "SELECT * FROM usuarios";

    List usuarios = await bd.query("usuarios",
        columns: ["id", "nome", "idade"], where: "id = ?", whereArgs: [id]);
  }

  _excluirUsuario(int id) async {
    Database bd = await _recuperarBancoDados();

    bd.delete("usuarios", where: "id = ?", whereArgs: [id]);
  }

  _atualizarUsuario(int id) async {
    Database bd = await _recuperarBancoDados();

    Map<String, dynamic> dadosUsuario = {
      "nome": "João",
      "idade": 22,
    };
    //bd.update("usuarios", );/
  }

  @override
  Widget build(BuildContext context) {
    _salvar();

    return Container();
  }
}
