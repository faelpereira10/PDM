import 'package:flutter/material.dart';
import '../componentes/categoria_item.dart';
import '../data/mock_data.dart';

class TelaCategorias extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cardapio CEFET 2023"),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200, //cada elemento tem a extenção de 200x
          childAspectRatio: 3/2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20, 
        ),
        children: mockCategories.map((e){
          return CategoriaItem(e);
        }).toList()
    )
  );
  }
}