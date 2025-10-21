import 'package:flutter/material.dart';

class CategoriaCard extends StatelessWidget {
  const CategoriaCard({super.key, this.categoria});
  final dynamic categoria;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("Se presiono");
      },
      child: Card(
        elevation: 5,
        color: Colors.blueGrey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                categoria["name"],
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: Colors.grey.shade100,
                ),
              ),
              Text(categoria["description"]),
            ],
          ),
        ),
      ),
    );
  }
}
