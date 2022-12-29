// @dart=2.9
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() {
  // Iniciar Firebase
  WidgetsFlutterBinding.ensureInitialized();

  Firestore.instance
      .collection("usuarios")
      .document("pontuacao")
      .setData({"Joao": "250", "Campos": "250"});

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
