import 'package:flutter/material.dart';

class Exercicio5 extends StatelessWidget {
  const Exercicio5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demonstração de Layout Flutter'),
      ),
      body: ListView(
        children: [
          Image.network(
            'https://docs.flutter.dev/assets/images/dashboards/layout-tutorial/lake.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          titleSection,
          buttonSection,
          textSection,
        ],
      ),
    );
  }

  Widget get titleSection => Container(
        padding: const EdgeInsets.all(32),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: const Text(
                      'Acampamento do Lago Oeschinen',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    'Kandersteg, Suíça',
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                ],
              ),
            ),
            Icon(Icons.star, color: Colors.red[500]),
            const Text('41'),
          ],
        ),
      );

  Widget get buttonSection {
    Color color = Colors.blue;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'LIGAR'),
        _buildButtonColumn(color, Icons.near_me, 'ROTA'),
        _buildButtonColumn(color, Icons.share, 'COMPARTILHAR'),
      ],
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  Widget get textSection => const Padding(
        padding: EdgeInsets.all(32),
        child: Text(
          'O Lago Oeschinen fica no sopé do Blüemlisalp nos Alpes Berneses. '
          'Situado a 1.578 metros acima do nível do mar, é um dos maiores '
          'lagos alpinos. Um passeio de teleférico saindo de Kandersteg, '
          'seguido de uma caminhada de meia hora por pastagens e florestas de pinheiros, '
          'leva você ao lago, que chega a 20 graus Celsius no verão. As atividades '
          'mais populares aqui incluem remo e passeios no tobogã de verão.',
          softWrap: true,
        ),
      );
}