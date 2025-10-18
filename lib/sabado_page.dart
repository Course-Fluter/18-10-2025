import 'package:flutter/material.dart';
import 'package:manejo_de_estados/formulario.dart';

class SabadoPage extends StatelessWidget {
  const SabadoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formulario"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Formulario(),
    );
  }
}
