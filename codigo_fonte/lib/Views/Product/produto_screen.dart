import 'package:flutter/material.dart';
import 'package:padaria_app/aplication/resources/shared/styles.dart';

class ProdutoScreen extends StatelessWidget {
  const ProdutoScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Color(0xFFF0C9),
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(width: 16),

                Image.asset('assets/images/baguete.jpg'),

                const SizedBox(width: 16),

                TextField(
                  style: nomeproduto,
                )

              ],
            ),
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    child: Text('Descrição: Feito utilizando trigo, ovos, leite e fermento'),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}