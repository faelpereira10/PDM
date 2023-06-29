import 'package:flutter/material.dart';
import './questionario.dart';

class Inicio extends StatelessWidget {
  final Function onIniciarQuestionario;

  Inicio({required this.onIniciarQuestionario});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bem-vindo ao Aplicativo de Questionário!',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => onIniciarQuestionario(context),
              child: Text('Iniciar Questionário'),
            ),
          ],
        ),
      ),
    );
  }
}
