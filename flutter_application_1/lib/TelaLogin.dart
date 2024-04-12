import 'package:flutter/material.dart';
import 'TelaCadastro.dart';
import 'TelaHome.dart';

class TelaLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login'),
        ),
        body: FormLogin(),
      ),
    );
  }
}

class FormLogin extends StatefulWidget {
  @override
  _FormLoginState createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
              ),
              validator: (value) {
                if (value == "") {
                  return 'Por favor, insira seu email';
                }
                return null;
              },
            ),
            SizedBox(height: 20.0),
            TextFormField(
              controller: _senhaController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Senha',
              ),
              validator: (value) {
                if (value == "") {
                  return 'Por favor, insira sua senha';
                }
                return null;
              },
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                var condicao = _formKey.currentState?.validate();
                if (condicao != null && condicao) {
                  String email = _emailController.text;
                  String senha = _senhaController.text;

                  if (email == "eu@gmail.com" && senha == "1234") {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => TelaHome(email)),
                    );
                  } else {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                              title: Text("Dados inválidos"),
                              content: Text("Usuário e/ou senha incorreto(a)"));
                        });
                  }
                }
              },
              child: Text('Entrar'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => TelaCadastro()),
                );
              },
              child: Text('Cadastre-se'),
            ),
          ],
        ),
      ),
    );
  }
}
