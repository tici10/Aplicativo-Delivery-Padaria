import 'package:flutter/material.dart';

class LoginAuthService {
   Future<bool> login(String email, String password) async {
    await Future.delayed(const Duration(seconds: 3));

    return email == "teste@teste.com" && password == "123456";
  }
}