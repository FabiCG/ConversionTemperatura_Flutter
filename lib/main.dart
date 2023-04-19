import 'package:flutter/material.dart';
import 'conversor.dart';

void main() => runApp(const AppConversorTemperatura());

class AppConversorTemperatura extends StatelessWidget {
  const AppConversorTemperatura({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Conversor de Escalas de Temperatura',
      home: ConversorTemperatura(),
    );
  }
}