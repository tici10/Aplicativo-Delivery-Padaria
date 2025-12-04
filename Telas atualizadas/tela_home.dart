import 'package:flutter/material.dart';
import 'package:projeto_flutter/modelos/Produto.dart';
import 'package:projeto_flutter/tela_produto.dart';

class TelaHome extends StatelessWidget {
  const TelaHome({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> imagensCarousel = [
      'assets/imagens/bolo_cenoura.png',
      'assets/imagens/pao_de_queijo.jpg',
      'assets/imagens/pizza.jpg',
    ];
    // Lista de produtos
    List<Produto> produtos = [
      Produto(
        id: 1,
        nome: 'Bolo de cenoura',
        preco: 25.50,
        descricao: 'Delicioso bolo de cenoura feito com muito carinho para você.',
        imagem: 'assets/imagens/bolo-cenoura.png',
      ),
      Produto(
        id: 2,
        nome: 'Pão de queijo',
        preco: 3.00,
        descricao: 'Pão de queijo quentinho e macio',
        imagem: 'assets/imagens/pao-de-queijo.jpg',
      ),
      Produto(
        id: 3,
        nome: 'Pizza de calabresa',
        preco: 30.00,
        descricao: 'Pizza de calabresa super recheada, perfeito para uma noite entre amigos.',
        imagem: 'assets/imagens/pizza.jpg',
      ),
    ];
    return Scaffold(
       appBar: AppBar(title: Text("Padaria"),
       ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [
              SizedBox(
                height: 200.0,
                child: PageView.builder(
                  itemCount: imagensCarousel.length,
                  itemBuilder: (context, index) {
                    return Image.asset(imagensCarousel[index]);
                  },
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: produtos.length,
                  itemBuilder: (context, index) {
                    Produto produto = produtos[index];
                    return Card(
                      margin: EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Image.asset(produto.imagem),
                          Text(
                            produto.nome,
                            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                          Text('R\$ ${produto.preco.toStringAsFixed(2)}'),
                          Text(
                            produto.descricao,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const Divider(),  
              ButtonTheme(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Produtos()),
                    );
                  },
                child: Text('Visualizar produto'), 
                ) , 
              ),
              SizedBox(width: 20.0), // Adicione um SizedBox com largura de 20.0
              Divider(),
            ],
          ),
        ),
    ); //Scaffold
  }
}
