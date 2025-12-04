import 'package:flutter/material.dart';
import 'package:padaria_app/aplication/componentes/action_label/view_model_label.dart';
import 'package:padaria_app/aplication/componentes/action_load/load_view_model.dart';
import 'package:padaria_app/aplication/scenes/login/viewmodel/login_viewM.dart';
import 'package:provider/provider.dart';
import 'package:padaria_app/aplication/componentes/action_load/action_load.dart';
import 'package:padaria_app/aplication/componentes/action_label/action_label.dart';
import 'package:padaria_app/aplication/scenes/home/home_view.dart';

class LoginView extends StatelessWidget{
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<LoginVModel>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Image.asset('assets/images/logo-login.png'),
            TextField(
              onChanged: viewModel.setEmail,
              decoration: const InputDecoration(labelText: "Email"),
            ),
            TextField(
              onChanged: viewModel.setPassword,
              obscureText: true,
              decoration: const InputDecoration(labelText: "senha"),
            ),
            const SizedBox(height: 20),

            if(viewModel.carregando)
              const CircularProgressIndicator()
            else
              ElevatedButton(
                onPressed: () => viewModel.login(context),
                child: const Text("Login")
              ),

            if (viewModel.Mensagemerro !=null)
              Padding(
                padding:const EdgeInsets.only(top: 10),
                child: Text(
                  viewModel.Mensagemerro!,
                  style: const TextStyle(color: Colors.red),
                ),
              ),
          ],
        ),
      ),
    );

  }
}
