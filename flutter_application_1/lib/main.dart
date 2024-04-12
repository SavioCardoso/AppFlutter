import 'package:flutter/material.dart';
import 'TelaLogin.dart';
import 'TelaCadastro.dart';

void main() {
  runApp(MaterialApp(home: TelaLogin(), initialRoute: "/Login", routes: {
    "/Cadastro": (context) => TelaCadastro(),
    "/Login": (context) => TelaLogin()
  }));
}
