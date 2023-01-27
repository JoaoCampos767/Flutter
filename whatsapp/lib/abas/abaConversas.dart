import 'package:flutter/material.dart';
import 'package:whatsapp/model/conversa.dart';

class AbaConversas extends StatefulWidget {
  const AbaConversas({super.key});

  @override
  State<AbaConversas> createState() => _AbaConversasState();
}

class _AbaConversasState extends State<AbaConversas> {
  List<Conversa> listaCnversas = [
    Conversa(
      "Claudia",
      "Ol� tudo bem?",
      "https://firebasestorage.googleapis.com/v0/b/whatsapp-3e941.appspot.com/o/perfil%2Fperfil1.jpg?alt=media&token=7cbcf3c0-6eeb-4a19-89c0-670e1e5e3566",
    ),
    Conversa(
      "Jos� Roberto",
      "Ol� tudo bem?",
      "https://firebasestorage.googleapis.com/v0/b/whatsapp-3e941.appspot.com/o/perfil%2Fperfil2.jpg?alt=media&token=0439e498-c72e-43e4-8064-621f71c4bd5a",
    ),
    Conversa(
      "Roberta",
      "Ol� tudo bem?",
      "https://firebasestorage.googleapis.com/v0/b/whatsapp-3e941.appspot.com/o/perfil%2Fperfil3.jpg?alt=media&token=f17aec21-0589-4758-9cd6-a21505e87002",
    ),
    Conversa(
      "Lucas Silva",
      "Ol� tudo bem?",
      "https://firebasestorage.googleapis.com/v0/b/whatsapp-3e941.appspot.com/o/perfil%2Fperfil4.jpg?alt=media&token=d3a68f67-9b43-4999-a75e-051a97ac9ddb",
    ),
    Conversa(
      "Damaceno",
      "Ol� tudo bem?",
      "https://firebasestorage.googleapis.com/v0/b/whatsapp-3e941.appspot.com/o/perfil%2Fperfil5.jpg?alt=media&token=2616d7f5-7365-4e66-b74c-5b65737bbe0d",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listaCnversas.length,
      itemBuilder: (context, indice) {
        Conversa conversa = listaCnversas[indice];

        return ListTile(
          contentPadding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
          leading: CircleAvatar(
            maxRadius: 30,
            backgroundColor: Colors.grey,
            backgroundImage: NetworkImage(conversa.caminhoFoto),
          ),
          title: Text(
            conversa.nome,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          subtitle: Text(
            conversa.mensagem,
            style: const TextStyle(
                color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 14),
          ),
        );
      },
    );
  }
}
