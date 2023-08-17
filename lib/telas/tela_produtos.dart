import 'package:a/models/categorias.dart';
import 'package:flutter/material.dart';

class TelaProdutos extends StatelessWidget {

    final Categoria categoria;

    const TelaProdutos(this.categoria);


      @override
      Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar (
                title: Text("Produtos de Categoria"),
            ),
            body: Text("Produtos de Categoria ${categoria.titulo}"),
        );
      }
}