import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List _lista = ["Joao", "Pedro", "Campos"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Widgets")),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: _lista.length,
                  itemBuilder: (context, index) {
                    final item = _lista[index];

                    return Dismissible(
                        direction: DismissDirection.horizontal,
                        background: Container(
                          color: Colors.green,
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Icon(Icons.edit, color: Colors.white)
                            ],
                          ),
                        ),
                        secondaryBackground: Container(
                          color: Colors.red,
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Icon(Icons.delete, color: Colors.white)
                            ],
                          ),
                        ),
                        onDismissed: ((direction) {
                          if (direction == DismissDirection.endToStart) {
                            print("direcao: endToStart");
                          } else if (direction == DismissDirection.startToEnd) {
                            print("direcao: startToEnd");
                          }

                          setState(() {
                            _lista.removeAt(index);
                          });
                        }),
                        key: Key(item),
                        child: ListTile(
                          title: Text(item),
                        ));
                  }))
        ],
      ),
    );
  }
}
