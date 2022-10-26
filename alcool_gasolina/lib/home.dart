import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _controllerAlcool = TextEditingController();
  TextEditingController _controllerGasolina = TextEditingController();

  String _textoResultado = "";

  void _calcular() {
    double? precoAlcool = double.tryParse(_controllerAlcool.text);
    double? precoGasolina = double.tryParse(_controllerGasolina.text);

    if (precoAlcool == null || precoGasolina == null) {
      setState(() {
        _textoResultado = ("preço nulo");
      });
    } else {
      if ((precoAlcool / precoGasolina) >= 0.7) {
        setState(() {
          _textoResultado = ("Melhor abastecer com gasolina");
        });
      } else {
        setState(() {
          _textoResultado = ("Melhor abastecer com alcool");
        });
      }

      _limparCampos();
    }
  }

  void _limparCampos() {
    _controllerGasolina.text = "";
    _controllerAlcool.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Álcool ou Gasolina"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
          child: SingleChildScrollView(
        padding: EdgeInsets.all(25),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Padding(
            padding: EdgeInsets.only(bottom: 32),
            child: Image.asset("images/logo.png"),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Text(
              "Saiba qual a melhor opção para abastecimento do seu carro",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: "Preço Alcool, ex: 1.59"),
            style: TextStyle(fontSize: 18),
            controller: _controllerAlcool,
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: "Preço Gasolina, ex: 3.59"),
            style: TextStyle(fontSize: 18),
            controller: _controllerGasolina,
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: ElevatedButton(
              child: Text(
                "Calcular",
                style: TextStyle(fontSize: 18),
              ),
              onPressed: _calcular,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              _textoResultado,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          )
        ]),
      )),
    );
  }
}
