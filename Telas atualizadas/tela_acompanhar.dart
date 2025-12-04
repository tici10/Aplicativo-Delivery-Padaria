import 'package:flutter/material.dart';
import 'package:projeto_flutter/map_screen.dart';

class Acompanhar_pedido extends StatelessWidget {
  const Acompanhar_pedido({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Acompanhar pedido'),
        iconTheme: IconThemeData(color: Colors.brown),
      ),
      body: Column(children: <Widget>[
        Title(
            color: Colors.black, 
            child: Text('Pedido Pago')
          ),
         ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MapScreen()),
            );
          },
          child: Text('Acompanhar pedido'),
        ),],),
    );
  }
}