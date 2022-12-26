import 'package:flutter/material.dart';

class Cadastrar extends StatefulWidget {
  @override
  State<Cadastrar> createState() => _CadastrarState();
}

class _CadastrarState extends State<Cadastrar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastrar'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        // ignore: prefer_const_literals_to_create_immutables
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
                hintText: 'Digite sua Senha',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(15),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Confirmacao de Senha',
                hintText: 'Confirme sua Usuario',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(15),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
                hintText: 'Digite seu Email',
              ),
            ),
          ),
          ElevatedButton(
            style: const ButtonStyle(
                minimumSize: MaterialStatePropertyAll(Size(100, 45))),
            child: const Text(
              'Cadastrar',
              style: TextStyle(fontSize: 20),
            ),
            onPressed: () {},
          )
        ]),
      ),
    );
  }
}
