import 'package:criando_widgets/home_controller.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var controller =
        context.dependOnInheritedWidgetOfExactType<HomeController>()!;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Text("Flutterando ${controller.value}"),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          controller.increment();
        },
      ),
    );
  }
}
