import 'package:flutter/material.dart';

class Exercicio4 extends StatelessWidget {
  const Exercicio4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exemplo de Imagens'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              child: FittedBox(
                fit: BoxFit.contain,
                child: Image.network(
                  'https://images.unsplash.com/photo-1506744626753-eda818294ce2?q=80&w=600&auto=format&fit=crop',
                ),
              ),
            ),
            const SizedBox(height: 20),
            Image.network(
              'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?q=80&w=1000&auto=format&fit=crop',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}