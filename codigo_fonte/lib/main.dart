import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';
import 'aplication/scenes/login/services/login_auth_service.dart';
import 'package:padaria_app/aplication/scenes/login/view/login_view.dart';
import 'package:padaria_app/aplication/scenes/login/viewmodel/login_viewM.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create:(_) => LoginVModel(),
      child: const App(),
    )
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App MVVC",
      home: const LoginView(),
    );
  }
}