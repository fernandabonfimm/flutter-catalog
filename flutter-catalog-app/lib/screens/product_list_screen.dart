import 'package:flutter/material.dart';
import 'product_detail_screen.dart';

class ProductListScreen extends StatelessWidget {
  final String category;

  const ProductListScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Produtos em $category'),
      ),
      body: ListView(
        children: <Widget>[
          if (category == 'Eletrônicos') ...[
            ListTile(
              title: const Text('Smartphone XYZ'),
              subtitle: const Text('R\$ 1.499,00'),
              leading: const Icon(Icons.phone_android),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ProductDetailScreen(productName: 'Smartphone XYZ')),
                );
              },
            ),
          ],
          if (category == 'Roupas') ...[
            ListTile(
              title: const Text('Camiseta Algodão'),
              subtitle: const Text('R\$ 49,90'),
              leading: const Icon(Icons.checkroom),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ProductDetailScreen(productName: 'Camiseta Algodão')),
                );
              },
            ),
          ],
          if (category == 'Acessórios') ...[
            ListTile(
              title: const Text('Fones de Ouvido Bluetooth'),
              subtitle: const Text('R\$ 299,90'),
              leading: const Icon(Icons.phone_android),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ProductDetailScreen(productName: 'Fones de Ouvido Bluetooth')),
                );
              },
            ),
          ],
        ],
      ),
    );
  }
}
