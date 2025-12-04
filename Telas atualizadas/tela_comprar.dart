import 'package:flutter/material.dart';
import 'package:projeto_flutter/map_screen.dart';
import 'package:projeto_flutter/tela_acompanhar.dart';

class Comprar extends StatelessWidget {
  const Comprar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comprar'),
        iconTheme: IconThemeData(color: Colors.brown),
      ),
      body: Column(
        children:<Widget>[
          Title(
            color: Colors.black, 
            child: Text('Formas de Pagamento')
          ),
          ButtonTheme(
            child: ElevatedButton(
            onPressed: () {
               Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Acompanhar_pedido()),
              );
            },
            child: Text('Pagar Com Pix'),
            ),
          ),
          Divider(),
          ButtonTheme(
            child: ElevatedButton(
            onPressed: () {
            },
            child: Text('Pagar Com Cartão'),
            ),
          ),
          Divider(),
           ButtonTheme(
            child: ElevatedButton(
            onPressed: () {
            },
            child: Text('Pagar em dinheiro'),
            ),
          ),
        ],
      ),
    );
  }
}
