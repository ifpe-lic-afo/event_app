import 'package:flutter/material.dart';
import 'EventoPage.dart';
import 'CriarAtividadePage.dart';
import 'LoginPage.dart';

void main() => runApp(const HomePage());

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página Inicial'),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        color: Colors.black,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildButtonEvento(context, 'Criar Evento'),
                _buildButtonLogin(context, 'Login'),
              ],
            ),
            const SizedBox(height: 20),
            _buildSearchBar(),
            const SizedBox(height: 20),
            _buildEventCard(context),
          ],
        ),
      ),
    );
  }

  ElevatedButton _buildButtonEvento(BuildContext context, String text) {
    return ElevatedButton(
      onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CriarAtividadePage()),
          ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.purple,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      ),
      child: Text(text, style: const TextStyle(color: Colors.white)),
    );
  }

    ElevatedButton _buildButtonLogin(BuildContext context, String text) {
    return ElevatedButton(
      onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
          ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.purple,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      ),
      child: Text(text, style: const TextStyle(color: Colors.white)),
    );
  }

  Widget _buildSearchBar() {
    return const TextField(
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: 'Pesquisar Evento',
        labelStyle: TextStyle(color: Colors.white70),
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.search, color: Colors.white70),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white70),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.purple),
        ),
      ),
    );
  }

  Widget _buildEventCard(BuildContext context) {
    return Card(
      color: Colors.grey[900],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'HackaTon Tech 2024',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const SizedBox(height: 10),
            const Text(
              'Participe do evento, onde você aprenderá sobre as últimas tendências e boas práticas de cybersegurança.',
              style: TextStyle(fontSize: 16, color: Colors.white70),
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EventoScreen()),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                ),
                child: const Text('Visualizar Evento', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class EventoScreen extends StatelessWidget {
//   const EventoScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Evento')),
//       body: const Center(child: Text('Detalhes do Evento')),
//     );
//   }
// }
