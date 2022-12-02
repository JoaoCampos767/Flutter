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

    var retorno = await openDatabase(localBancoDados, version: 1,
        onCreate: (db, dbVersao) {
      String sql =
          "CREATE TABLE usuarios(id INTEGER PRIMARY KEY AUTOINCREMENT, nome VARCHAR, idade INTEGER)";

      db.execute(sql);
    });

    print(retorno.isOpen.toString());
  }

  @override
  Widget build(BuildContext context) {
    _recuperarBancoDados();

    return Container();
  }
}
