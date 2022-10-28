import 'package:flutter/material.dart';

class TelaContato extends StatefulWidget {
  @override
  State<TelaContato> createState() => _TelaContatoState();
}

class _TelaContatoState extends State<TelaContato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Text("Contatos"),
          backgroundColor: Color.fromARGB(255, 105, 180, 129)),
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset("images/detalhe_contato.png"),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Contatos",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 105, 180, 129)),
                  ),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text("Email: teste@gmail.com"),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text("Telefone: (11) 3333-4444"),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text("Celular: (11) 99999-8888"),
            )
          ],
        ),
      )),
    );
  }
}
