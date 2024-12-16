import 'package:flutter/material.dart';
import 'HomePage.dart';

class CriarAtividadePage extends StatelessWidget {
  const CriarAtividadePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Criar Atividade'), backgroundColor: Colors.purple),
        body: const CriarAtividadeForm(), backgroundColor: Colors.black
      ),
    );
  }
}

class CriarAtividadeForm extends StatelessWidget {
  const CriarAtividadeForm({super.key});

  @override
  Widget build(BuildContext context) {
    final campos = [
      'NOME', 'DESCRIÇÃO', 'PALESTRANTE', 'HORÁRIO', 'LOCAL', 'SALA', 'DURAÇÃO'
    ];

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...campos.map((label) => Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: TextField(
                  decoration: InputDecoration(labelText: label),
                ),
              )),
          ElevatedButton(
            onPressed: () => _showSuccessDialog(context),
            child: const Text('CRIAR')
          ),
        ],
      ),
    );
  }

  void _showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Sucesso'),
        content: const Text('Sua atividade foi criada com sucesso!'),
        actions: [
          TextButton(
            onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomePage()),),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}
