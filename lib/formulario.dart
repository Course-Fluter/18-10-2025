import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  const Formulario({super.key});

  @override
  State<Formulario> createState() => _FormularioState();
}

bool validate = false;
String error = "Ocurrio Un error";
final TextEditingController controller = TextEditingController();

class _FormularioState extends State<Formulario> {
  @override
  validacion() {
    if (controller.text == "matias") {
      setState(() {
        validate = true;
      });
      print("Validacion Correcta");
    } else {
      print("Validacion Incorrecta");
    }
  }

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: [
          TextField(
            controller: controller,
            decoration: InputDecoration(
              label: Text("Campo"),
              border: OutlineInputBorder(),
            ),
          ),
          if (validate) Text("Sin Errores") else SizedBox(),
          ElevatedButton(
            onPressed: () {
              validacion();
            },
            child: Text(
              "Validar",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }
}
