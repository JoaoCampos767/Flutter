import 'package:flutter/material.dart';

class TelaServico extends StatefulWidget {
  @override
  State<TelaServico> createState() => _TelaServicoState();
}

class _TelaServicoState extends State<TelaServico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Text("Serviços"),
          backgroundColor: Color.fromARGB(255, 48, 206, 198)),
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset("images/detalhe_servico.png"),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Serviços",
                    style: TextStyle(
                        fontSize: 20, color: Color.fromARGB(255, 48, 206, 198)),
                  ),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text("Consultria"),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text("Calculo de precos"),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text("Acompanhanmento de projetos"),
            )
          ],
        ),
      )),
    );
  }
}
