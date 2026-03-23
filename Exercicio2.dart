import 'package:flutter/material.dart';

class Exercicio2 extends StatelessWidget {
  const Exercicio2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Barra de Botões')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildButtonColumn(Icons.phone, 'LIGAR'),
            _buildButtonColumn(Icons.near_me, 'ROTA'),
            _buildButtonColumn(Icons.share, 'COMPARTILHAR'),
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(IconData icon, String label) {
    Color color = Colors.deepPurple;

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color, size: 40),
        const SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ],
    );
  }
}