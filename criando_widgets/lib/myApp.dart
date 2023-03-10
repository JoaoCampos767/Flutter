import 'package:criando_widgets/home.dart';
import 'package:criando_widgets/home_controller.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeController(
        child: const Home(),
      ),
    );
  }
}
