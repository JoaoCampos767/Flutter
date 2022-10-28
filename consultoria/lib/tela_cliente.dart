import 'package:flutter/material.dart';

class TelaCliente extends StatefulWidget {
  @override
  State<TelaCliente> createState() => _TelaClienteState();
}

class _TelaClienteState extends State<TelaCliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Text("Clientes"),
          backgroundColor: Color.fromARGB(255, 153, 192, 46)),
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset("images/detalhe_cliente.png"),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Clientes",
                    style: TextStyle(
                        fontSize: 20, color: Color.fromARGB(255, 153, 192, 46)),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 16),
              child: Image.asset("images/cliente1.png"),
            ),
            Text("Empresa de Software"),
            Padding(
              padding: EdgeInsets.only(top: 16),
              child: Image.asset("images/cliente2.png"),
            ),
            Text("Empresa de Auditoria"),
          ],
        ),
      )),
    );
  }
}
