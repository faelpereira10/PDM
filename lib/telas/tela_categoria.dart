

import 'package:flutter/material.dart';
import '../componentes/categoria_item.dart';
import '../data/mock_data.dart';

class TelaCategorias extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title: const Text("Cardápio do CEFETMG"),
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent( //basicamente uma barra de rolagem
          maxCrossAxisExtent: 200, //cada elemento tem extensão de 200
          childAspectRatio: 3/2, //proporção de cada elemento dentro do grid
          crossAxisSpacing: 20, // eixo cruzado de 20
          mainAxisSpacing: 20 //espaçamento no main olhar
    
        ),
        children: mockCategories.map((e) {
          return CategoriaItem(e);
        }).toList(),
      ),
    );
  }
}