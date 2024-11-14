import 'package:flutter/material.dart';

class MyEventsPage extends StatelessWidget {
  final List<String> events = [
    'Evento 1: Descrição do evento 1',
    'Evento 2: Descrição do evento 2',
    'Evento 3: Descrição do evento 3',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meus Eventos Criados'),
        centerTitle: true, // Centraliza o título
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.builder(
        itemCount: events.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              title: Text(events[index].split(': ')[0]),
              subtitle: Text(events[index].split(': ')[1]),
              trailing: IconButton(
                icon: Icon(Icons.delete),
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
