import 'package:flutter/material.dart';
import 'tela_home.dart';

class Telalogin extends StatelessWidget {
  const Telalogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login", textAlign: TextAlign.center,),
        iconTheme: const IconThemeData(color: Colors.brown),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            width: 200,
            height: 200,
            child: Image.asset('assets/imagens/logo.png'),
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            style: new TextStyle(color: Colors.brown, fontSize: 20),
            decoration: InputDecoration(
                labelText: "Nome", labelStyle: TextStyle(color: Colors.brown)),
          ),
          TextFormField(
            autofocus: true,
            keyboardType: TextInputType.number,
            style: new TextStyle(color: Colors.brown, fontSize: 20),
            decoration: InputDecoration(
                labelText: "Senha", labelStyle: TextStyle(color: Colors.brown)),
          ),
          Divider(),
          ButtonTheme(
            child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TelaHome()),
              );
            },
            child: Text('Entrar'),
            ),
          ),
        ],
      ),
    );
  }
}
