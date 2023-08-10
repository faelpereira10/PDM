import 'package:a/models/categorias.dart';
import 'package:flutter/material.dart';

class CategoriaItem extends StatelessWidget {
  final Categoria categoria;

  CategoriaItem(this.categoria);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(categoria.titulo),
    );
  }
}
