import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/abas/abaContatos.dart';
import 'package:whatsapp/abas/abaConversas.dart';
import 'package:whatsapp/telas/login.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController? _tabController;
  List<String> itensMenu = [
    "Configurações",
    "Deslogar",
  ];
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

  _escolhaMenuItem(String itemScolhido) {
    switch (itemScolhido) {
      case "Configurações":
        _configurarUsuario();
        break;
      case "Deslogar":
        _deslogarUsuario();
        break;
    }
  }

  _deslogarUsuario() {
    FirebaseAuth auth = FirebaseAuth.instance;
    auth.signOut();
    Navigator.pushReplacementNamed(context, "/login");
  }

  _configurarUsuario() {
    Navigator.pushNamed(context, "/configuracoes");
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
        actions: [
          PopupMenuButton<String>(
            itemBuilder: (context) {
              return itensMenu.map(
                (String item) {
                  return PopupMenuItem<String>(
                    value: item,
                    child: Text(item),
                  );
                },
              ).toList();
            },
            onSelected: _escolhaMenuItem,
          ),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          AbaConversas(),
          AbaContatos(),
        ],
      ),
    );
  }
}
