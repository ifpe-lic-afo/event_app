import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Palestra Example',
      theme: ThemeData(
        primarySwatch: Colors.purple, 
      ),
      home: const PalestraDetailsScreen(),
    );
  }
}

class PalestraDetailsScreen extends StatelessWidget {
  // Dados simulados da palestra
  final String nome = 'Inovações em Tecnologia';
  final String descricao = 'Discussão sobre as últimas inovações tecnológicas.';
  final String palestrante = 'Turma Lic.Computação 6°';
  final String horario = '15:00 - 16:30';
  final String local = 'IFPE';
  final String sala = 'Lab 3';
  final String duracao = '1 hora e 30 minutos';

  const PalestraDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('Detalhes da Palestra'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Nome:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.purple),
            ),
            Text(nome, style: const TextStyle(fontSize: 16, color: Colors.white)),
            const SizedBox(height: 16),
            const Text(
              'Descrição:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.purple),
            ),
            Text(descricao, style: const TextStyle(fontSize: 16, color: Colors.white)),
            const SizedBox(height: 16),
            const Text(
              'Palestrante:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.purple),
            ),
            Text(palestrante, style: const TextStyle(fontSize: 16, color: Colors.white)),
            const SizedBox(height: 16),
            const Text(
              'Horário:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.purple),
            ),
            Text(horario, style: const TextStyle(fontSize: 16, color: Colors.white)),
            const SizedBox(height: 16),
            const Text(
              'Local:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.purple),
            ),
            Text(local, style: const TextStyle(fontSize: 16, color: Colors.white)),
            const SizedBox(height: 16),
            const Text(
              'Sala:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.purple),
            ),
            Text(sala, style: const TextStyle(fontSize: 16, color: Colors.white)),
            const SizedBox(height: 16),
            const Text(
              'Duração:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.purple),
            ),
            Text(duracao, style: const TextStyle(fontSize: 16, color: Colors.white)),
            const SizedBox(height: 32), 
            Center(
              child: ElevatedButton(
                onPressed: () {
                  
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Você se inscreveu na palestra!')),
                  );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.purple, 
                ),
                child: const Text('Participar de atividade'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}