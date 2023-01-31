// @dart=2.9
import 'package:flutter/material.dart';
import 'package:whatsapp/routeGenerator.dart';
import 'package:whatsapp/telas/login.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Login(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xff075E54),
          secondary: const Color(0xff25D366),
        ),
      ),
      initialRoute: "/",
      onGenerateRoute: RouteGeneretor.generateRoute,
    ),
  );
}
