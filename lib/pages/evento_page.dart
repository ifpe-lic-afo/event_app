import 'package:flutter/material.dart';

class EventoPage extends StatelessWidget {
  const EventoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes do Evento'),
      ),
      body: Column(
        children: [
          // Imagem do evento
          Image.network(
            'https://via.placeholder.com/600x300', // URL da imagem do evento
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),

          const SizedBox(height: 16), // Espaçamento

          // Título/descrição do evento
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Descrição do Evento',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),

          const Spacer(), // Preenche o espaço restante

          // Botões
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Ação para visualizar a programação
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EventProgramScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50), // Largura total
                  ),
                  child: const Text('Visualizar Programação'),
                ),

                const SizedBox(height: 16), // Espaçamento entre os botões

                ElevatedButton(
                  onPressed: () {
                    // Ação para inscrever-se no evento
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Inscrição realizada com sucesso!'),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50), // Largura total
                  ),
                  child: const Text('Inscrever-se no Evento'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class EventProgramScreen extends StatelessWidget {
  const EventProgramScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Programação do Evento'),
      ),
      body: const Center(
        child: Text('Aqui vai a programação do evento.'),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: EventoPage(),
  ));
}
