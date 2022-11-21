import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.only(
                    top: 15, bottom: 15, right: 60, left: 60)),
            child: const Text("Login"),
          ),
          const Padding(padding: EdgeInsets.only(bottom: 30)),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.only(
                    top: 15, bottom: 15, right: 52, left: 50)),
            child: const Text("Register"),
          ),
        ],
      ),
    );
  }
}
