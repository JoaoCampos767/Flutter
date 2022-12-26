import 'dart:html';
import 'package:flutter/material.dart';
import 'package:loginn/cadastro.dart';
import 'package:loginn/login.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(130),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
              style: const ButtonStyle(
                minimumSize: MaterialStatePropertyAll(Size(150, 50)),
              ),
              child: const Text(
                'Entrar',
                style: TextStyle(fontSize: 20),
              ),
            ),
            const Padding(padding: EdgeInsets.all(10)),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Cadastrar()));
                },
                style: const ButtonStyle(
                  minimumSize: MaterialStatePropertyAll(Size(150, 50)),
                ),
                child: const Text(
                  'Cadastrar',
                  style: TextStyle(fontSize: 20),
                ))
          ],
        ),
      ),
    );
  }
}
