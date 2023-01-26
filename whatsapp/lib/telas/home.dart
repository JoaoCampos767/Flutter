import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/telas/abas/abaContatos.dart';
import 'package:whatsapp/telas/abas/abaConversas.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  String _emailUsuario = "";

  Future _recuperarDadosUsuarios() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User usuarioLogado = auth.currentUser!;

    setState(() {
      _emailUsuario = usuarioLogado.email!;
    });
  }

  @override
  void initState() {
    super.initState();

    _recuperarDadosUsuarios();

    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WhatsApp"),
        bottom: TabBar(
          indicatorWeight: 4,
          labelStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: const [
            Tab(text: "Conversas"),
            Tab(text: "Contatos"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          AbaContatos(),
          AbaConversas(),
        ],
      ),
    );
  }
}
