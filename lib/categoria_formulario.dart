import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:manejo_de_estados/categoria_page.dart';

class CategoriaFormulario extends StatelessWidget {
  CategoriaFormulario({super.key});
  final TextEditingController ctnName = TextEditingController();
  final TextEditingController ctnDescription = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void createCategoria() async {
      final dio = Dio();
      final response = await dio.post(
        'http://10.16.0.89:3000/categories',
        data: {
          "name": ctnName.text,
          "description": ctnDescription.text,
        },
      );
      if (response.statusCode == 201) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => CategoriaPage()),
        );
      }
    }

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text(
                "Nombre",
                style: TextStyle(fontSize: 20),
              ),
              hint: Text("Escribe el nombre de la categoria"),
            ),
            controller: ctnName,
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text(
                "Descripcion",
                style: TextStyle(fontSize: 20),
              ),
              hint: Text("Describa la categoria"),
            ),
            controller: ctnDescription,
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: createCategoria,
            child: Text("Agregar Categoria"),
          ),
        ],
      ),
    );
  }
}
