import 'package:flutter/material.dart';
import 'package:manejo_de_estados/categoria_card.dart';

class CategoriaList extends StatelessWidget {
  const CategoriaList({super.key, required this.categorias});
  final List<dynamic> categorias;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: categorias.length,
        itemBuilder: (context, index) {
          final categoria = categorias[index];
          return CategoriaCard(
            categoria: categoria,
          );
        },
      ),
    );
  }
}
