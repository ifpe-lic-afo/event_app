import 'package:flutter/material.dart';


class EventoScreen extends StatelessWidget {
  final Evento evento = Evento(
    nome: "Hackathon Tech",
    descricao: "Um evento para desenvolvedores inovarem.",
    horario: DateTime(2024, 12, 10, 9, 0),
    local: "Centro de Convenções",
    organizador: "TechCorp",
    atividades: [
      Atividade(nome: "Palestra de Abertura", modalidade: "Presencial", quantidadeParticipantes: 200),
      Atividade(nome: "Maratona de Programação", modalidade: "Competição", quantidadeParticipantes: 50),
    ],
  );

  EventoScreen({super.key});

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
            _buildDetailRow('Nome:', evento.nome),
            _buildDetailRow('Descrição:', evento.descricao),
            _buildDetailRow('Palestrante:', evento.organizador),
            _buildDetailRow('Horário:', evento.horario.toString()),
            _buildDetailRow('Local:', evento.local),
            const SizedBox(height: 16),
            const Text(
              'Atividades:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.purple),
            ),
            ...evento.atividades.map((a) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Text(
                    '- ${a.nome} (${a.modalidade}, ${a.quantidadeParticipantes} participantes)',
                    style: const TextStyle(fontSize: 16, color: Colors.white),
                  ),
                )),
            const SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Você se inscreveu na palestra!')),
                  );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.purple,
                ),
                child: const Text('Participar de atividade'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.purple),
          ),
          Text(value, style: const TextStyle(fontSize: 16, color: Colors.white)),
        ],
      ),
    );
  }
}

class Evento {
  final String nome;
  final String descricao;
  final DateTime horario;
  final String local;
  final String organizador;
  final List<Atividade> atividades;

  Evento({
    required this.nome,
    required this.descricao,
    required this.horario,
    required this.local,
    required this.organizador,
    required this.atividades,
  });
}

class Atividade {
  final String nome;
  final String modalidade;
  final int quantidadeParticipantes;

  Atividade({
    required this.nome,
    required this.modalidade,
    required this.quantidadeParticipantes,
  });
}
