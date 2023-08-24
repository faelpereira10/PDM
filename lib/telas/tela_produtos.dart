import 'package:a/models/categorias.dart';
import 'package:flutter/material.dart';

class TelaProdutos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final categoria = ModalRoute.of(context)?.settings.arguments as Categoria;
    return Scaffold(
      appBar: AppBar(
        title: Text("Produtos de Categoria"),
      ),
      body: Text("Produtos de Categoria ${categoria.titulo}"),
    );
  }
}
