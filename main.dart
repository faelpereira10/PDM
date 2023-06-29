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

void main() {
  runApp(AulaComponentes());
}

class AulaComponentes extends StatefulWidget {
  @override
  State<AulaComponentes> createState() => _AulaComponentesState();
}

class _AulaComponentesState extends State<AulaComponentes> {
  var perguntaAtual = 0;
  var cor = Colors.white;
  bool _questionarioIniciado = false;

  final List<Map<String, Object>> perguntas = [
    {
      "texto": "Qual é o seu gênero musical favorito?",
      "respostas": ["Pop", "Rock", "Hip Hop", "Eletrônica"]
    },
    {
      "texto": "Qual é o seu destino de viagem dos sonhos?",
      "respostas": ["Maldivas", "Paris", "Tóquio", "Nova York"]
    },
    {
      "texto": "Qual é o seu hobby favorito?",
      "respostas": ["Ler", "Cantar", "Praticar esportes", "Assistir filmes"]
    },
  ];

  bool get temPergunta {
    return perguntaAtual < perguntas.length;
  }

  void acao() {
    setState(() {
      perguntaAtual++;
    });
    print(perguntaAtual);
  }

  void iniciarQuestionario(BuildContext context) {
    setState(() {
      _questionarioIniciado = true;
    });
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Questionario(
          perguntas: perguntas,
          perguntaAtual: perguntaAtual,
          onRespostaSelecionada: () => acao(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget corpo;
    if (_questionarioIniciado) {
      corpo = temPergunta
          ? Questionario(
              perguntas: perguntas,
              perguntaAtual: perguntaAtual,
              onRespostaSelecionada: () => acao(),
            )
          : Text("Resultado");
    } else {
      corpo = Inicio(onIniciarQuestionario: iniciarQuestionario);
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: temPergunta
              ? Text(perguntas[perguntaAtual]["texto"].toString())
              : Text("Terminou"),
        ),
        body: corpo,
      ),
    );
  }
}
