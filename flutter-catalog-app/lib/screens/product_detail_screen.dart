import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  final String productName;

  const ProductDetailScreen({super.key, required this.productName});

  @override
  Widget build(BuildContext context) {
    // Define o caminho da imagem com base no produto
    String imagePath;
    if (productName == 'Fones de Ouvido Bluetooth') {
      imagePath = 'assets/fonemoderno.jpg';
    } else if (productName == 'Smartphone XYZ') {
      imagePath = 'assets/smartphone_xyz.png';
    } else {
      imagePath =
          'assets/default_image.png'; // Caminho padrão para outros produtos
    }

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(productName),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Descrição'),
              Tab(text: 'Avaliações'),
              Tab(text: 'Especificações'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Aba "Descrição" com Imagem
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Image.asset(imagePath, height: 300),
                  const SizedBox(height: 16),
                  Text(
                    _getDescription(productName),
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            // Aba "Avaliações"
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Avaliações dos clientes: \n\n'
                '- Ótimo produto, excelente qualidade! (5 estrelas)\n'
                '- Produto muito bom, mas poderia ter um preço mais acessível. (4 estrelas)\n',
                style: TextStyle(fontSize: 16),
              ),
            ),
            // Aba "Especificações"
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                _getSpecifications(productName),
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Função para fornecer a descrição do produto
  String _getDescription(String productName) {
    if (productName == 'Fones de Ouvido Bluetooth') {
      return 'Fones De Ouvido Para Gatos Sem Fio Hifi RGB Fone Bluetooth Jogos Com Microfone Cancelamento De Ruído Telefone.';
    } else if (productName == 'Smartphone XYZ') {
      return 'O Smartphone XYZ possui uma tela AMOLED de 6.5 polegadas, processador octa-core, 128GB de armazenamento e câmera tripla de 48MP.';
    } else {
      return 'Descrição não disponível.';
    }
  }

  // Função para fornecer as especificações do produto
  String _getSpecifications(String productName) {
    if (productName == 'Fones de Ouvido Bluetooth') {
      return 'Especificações Técnicas:\n\n'
          '- Tipo de Conexão: Sem fio\n'
          '- Conectividade: Bluetooth 5.0\n'
          '- Especializado em Jogos: Sim\n'
          '- Alcance de Frequência Mínima (Hz): 20Hz\n'
          '- Cancelamento de Ruído: Sim';
    } else if (productName == 'Smartphone XYZ') {
      return 'Especificações Técnicas:\n\n'
          '- Tela: 6.5 polegadas, AMOLED\n'
          '- Processador: Octa-core 2.0 GHz\n'
          '- Armazenamento: 128GB\n'
          '- Câmera: Traseira tripla 48MP + 12MP + 5MP\n'
          '- Bateria: 4500mAh';
    } else {
      return 'Especificações não disponíveis.';
    }
  }
}
