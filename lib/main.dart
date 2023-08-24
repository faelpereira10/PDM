import 'package:a/telas/tela_produtos.dart';
import 'package:flutter/material.dart';
import '../telas/tela_categorias.dart';
import '../utils/rotas.dart';

void main() {
  runApp(AppCardapio());
}

class AppCardapio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cardápio",
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'Schyler',
          textTheme: ThemeData.light().textTheme.copyWith(
              titleSmall:
                  const TextStyle(fontSize: 20, fontFamily: "Schyler"))),
      //home: TelaCategorias(),
      routes: {
        Rotas.HOME: (ctx) => TelaCategorias(),
        Rotas.PRODUTOS: (ctx) => TelaProdutos(),
      },
    );
  }
}
