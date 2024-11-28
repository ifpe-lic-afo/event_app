import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyEventsPage(),
    );
  }
}

class MyEventsPage extends StatelessWidget {
  const MyEventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> events = [
      'Evento 1: Descrição do evento 1',
      'Evento 2: Descrição do evento 2',
      'Evento 3: Descrição do evento 3',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Meus Eventos Criados'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.builder(
        itemCount: events.length, // Corrigido: Definir itemCount
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              title: Text(events[index].split(': ')[0]),
              subtitle: Text(events[index].split(': ')[1]),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  // Adicione a lógica para excluir o evento aqui
                },
              ),
              onTap: () {
                // Adicione a lógica para quando o card for clicado aqui
              },
            ),
          );
        },
      ),
    );
  }
}
