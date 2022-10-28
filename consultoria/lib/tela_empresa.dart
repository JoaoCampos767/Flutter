import 'package:flutter/material.dart';

class TelaEmpresa extends StatefulWidget {
  @override
  State<TelaEmpresa> createState() => _TelaEmpresaState();
}

class _TelaEmpresaState extends State<TelaEmpresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Empresa"), backgroundColor: Colors.orange),
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset("images/detalhe_empresa.png"),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Sobre a Empresa",
                    style: TextStyle(fontSize: 20, color: Colors.deepOrange),
                  ),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text(
                  "Desde o início de sua história, a MBM Solutions vem estabelecendo um estreito relacionamento com seus clientes para desenvolver soluções que aumentem a competitividade das empresas. Desenvolvendo softwares de gestão empresarial para uma diversificada realidade de clientes de vários portes e áreas de atuação como o da indústria, comércio e serviços, justificando a versatilidade e flexibilidade de seus produtos."),
            )
          ],
        ),
      )),
    );
  }
}
