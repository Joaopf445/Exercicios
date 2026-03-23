import 'package:flutter/material.dart';

class Exercicio3 extends StatelessWidget {
  const Exercicio3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widgets Sobrepostos'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          Positioned(
            top: 20,
            left: 20,
            child: Container(
              width: 150,
              height: 150,
              color: Colors.green,
              padding: const EdgeInsets.all(8),
              child: const Text('Verde', style: TextStyle(color: Colors.white)),
            ),
          ),
          Positioned(
            top: 60,
            left: 40,
            child: Container(
              width: 150,
              height: 150,
              color: Colors.red,
              padding: const EdgeInsets.all(8),
              child: const Text('Vermelho', style: TextStyle(color: Colors.white)),
            ),
          ),
          Positioned(
            top: 100,
            left: 60,
            child: Container(
              width: 150,
              height: 150,
              color: Colors.purple,
              padding: const EdgeInsets.all(8),
              child: const Text('Roxo', style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}