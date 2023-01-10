// @dart=2.9
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:whatsapp/home.dart';
import 'package:whatsapp/login.dart';

void main() async {
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
