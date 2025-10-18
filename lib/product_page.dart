import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

List<dynamic> products = [];

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    void getProductos() async {
      final dio = Dio();
      final response = await dio.get('http://10.16.0.80:3000/products');
      setState(() {
        products = response.data;
      });

      print(response.data);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Productos"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: getProductos,
              child: Text("Obtener Productos"),
            ),
            SizedBox(
              height: 500,
              child: ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, i) {
                  final product = products[i];
                  final name = product['name'];
                  final description = product['description'];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => Scaffold(
                            body: Center(
                              child: Text(name),
                            ),
                          ),
                        ),
                      );
                    },
                    child: ListTile(
                      iconColor: Colors.amber,
                      trailing: Icon(Icons.remove_circle),
                      title: Text(name),
                      subtitle: Text(description),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
