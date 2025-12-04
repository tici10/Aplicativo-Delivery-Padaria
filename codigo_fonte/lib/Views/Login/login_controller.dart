import 'package:flutter/material.dart';
import 'package:padaria_app/aplication/scenes/login/services/login_auth_service.dart';

class LoginController {
  final LoginAuthService _authService = LoginAuthService();

  Future<bool> login(String email, String password) async{
    return await _authService.login(email, password);
  }
}
