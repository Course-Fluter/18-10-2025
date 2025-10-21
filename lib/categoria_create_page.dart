import 'package:flutter/material.dart';
import 'package:manejo_de_estados/categoria_formulario.dart';

class CategoriaCreatePage extends StatelessWidget {
  const CategoriaCreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        title: Text(
          "Crear Categoria",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: CategoriaFormulario(),
    );
  }
}
