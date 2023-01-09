// @dart=2.9
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:whatsapp/home.dart';

void main() {
  FirebaseFirestore.instance
      .collection("usuarios")
      .doc("001")
      .set({"nome": "Joao"});

  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}
