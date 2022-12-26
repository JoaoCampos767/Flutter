import 'dart:html';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Usuario',
                  hintText: 'Digite seu Usuario',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Senha',
                  hintText: 'Digite sua senha',
                ),
              ),
            ),
            ElevatedButton(
              style: const ButtonStyle(
                  minimumSize: MaterialStatePropertyAll(Size(100, 45))),
              child: const Text(
                'Logar',
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
