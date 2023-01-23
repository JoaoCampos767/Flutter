// @dart=2.9
import 'package:flutter/material.dart';
import 'package:whatsapp/login.dart';

void main() {
  /*WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  FirebaseFirestore.instance
      .collection("usuarios")
      .doc("001")
      .set({"nome": "Joao"});*/

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const Login(),
    theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: const Color(0xff075E54),
            secondary: const Color(0xff25D366))),
  ));
}
