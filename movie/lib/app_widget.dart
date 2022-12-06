import 'package:flutter/material.dart';
import 'package:movie/criar_conta_page.dart';
import 'package:movie/login_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MovieDB',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      //home: CriarConta(),
      //home: CadastroConfirmado(),
    );
  }
}
