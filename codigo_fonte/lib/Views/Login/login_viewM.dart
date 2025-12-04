import 'package:flutter/material.dart';
import 'package:padaria_app/aplication/scenes/home/home_view_model.dart';
import 'package:padaria_app/aplication/scenes/login/controller/login_controller.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';
import 'package:padaria_app/aplication/scenes/login/model/login_viewmodel.dart';
import 'package:padaria_app/aplication/scenes/home/home_view.dart';

class LoginVModel extends ChangeNotifier{
  final LoginController _controller = LoginController();
  String email = "";
  String senha = "";
  bool carregando = false;
  String? Mensagemerro;

  void setEmail(String valor){
    email = valor;
    notifyListeners();
  }

  void setPassword(String valor){
    senha = valor;
    notifyListeners();
  }

  Future<void> login(BuildContext context) async{
    carregando = true;
    Mensagemerro = null;
    notifyListeners();

    final resultado = await _controller.login(email, senha);

    carregando = false;
    notifyListeners();

    if (resultado){
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const HomeView()),
      );
    } else {
      Mensagemerro = "Email ou senha incorretos";
      notifyListeners();
    } 

  }
}