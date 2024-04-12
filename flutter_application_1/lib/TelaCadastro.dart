import 'package:flutter/material.dart';
import 'TelaLogin.dart';

class TelaCadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cadastro de Usuário',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cadastro de Usuário'),
        ),
        body: CadastroForm(),
      ),
    );
  }
}

class CadastroForm extends StatefulWidget {
  @override
  _CadastroFormState createState() => _CadastroFormState();
}

class _CadastroFormState extends State<CadastroForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _nomeController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _dataNascimentoController = TextEditingController();
  TextEditingController _cepController = TextEditingController();
  TextEditingController _logradouroController = TextEditingController();
  TextEditingController _numeroController = TextEditingController();
  TextEditingController _cidadeController = TextEditingController();
  TextEditingController _estadoController = TextEditingController();
  TextEditingController _senhaController = TextEditingController();
  TextEditingController _confirmarSenhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Dados Pessoais',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              TextFormField(
                controller: _nomeController,
                decoration: InputDecoration(labelText: 'Nome Completo'),
                validator: (value) {
                  if (value == "") {
                    return 'Por favor, insira seu nome completo';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10.0),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if (value == "") {
                    return 'Por favor, insira seu email';
                  }
                  // Adicionar validação de email se necessário
                  return null;
                },
              ),
              SizedBox(height: 10.0),
              TextFormField(
                controller: _dataNascimentoController,
                decoration: InputDecoration(labelText: 'Data de Nascimento'),
                validator: (value) {
                  if (value == "") {
                    return 'Por favor, insira sua data de nascimento';
                  }
                  // Adicionar validação de data se necessário
                  return null;
                },
              ),
              SizedBox(height: 40.0),
              Text(
                'Endereço',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              TextFormField(
                controller: _cepController,
                decoration: InputDecoration(labelText: 'CEP'),
                validator: (value) {
                  if (value == "") {
                    return 'Por favor, insira seu CEP';
                  }
                  // Adicionar validação de CEP se necessário
                  return null;
                },
              ),
              SizedBox(height: 10.0),
              TextFormField(
                controller: _logradouroController,
                decoration: InputDecoration(labelText: 'Logradouro'),
                validator: (value) {
                  if (value == "") {
                    return 'Por favor, insira seu logradouro';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10.0),
              TextFormField(
                controller: _numeroController,
                decoration: InputDecoration(labelText: 'Número'),
                validator: (value) {
                  if (value == "") {
                    return 'Por favor, insira o número';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10.0),
              TextFormField(
                controller: _cidadeController,
                decoration: InputDecoration(labelText: 'Cidade'),
                validator: (value) {
                  if (value == "") {
                    return 'Por favor, insira sua cidade';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10.0),
              TextFormField(
                controller: _estadoController,
                decoration: InputDecoration(labelText: 'Estado'),
                validator: (value) {
                  if (value == "") {
                    return 'Por favor, insira seu estado';
                  }
                  return null;
                },
              ),
              SizedBox(height: 40.0),
              Text(
                'Credenciais',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              TextFormField(
                controller: _senhaController,
                obscureText: true,
                decoration: InputDecoration(labelText: 'Senha'),
                validator: (value) {
                  if (value == "") {
                    return 'Por favor, insira sua senha';
                  }
                  // Adicionar validação de senha se necessário
                  return null;
                },
              ),
              SizedBox(height: 10.0),
              TextFormField(
                controller: _confirmarSenhaController,
                obscureText: true,
                decoration: InputDecoration(labelText: 'Confirmar senha'),
                validator: (value) {
                  if (value == "") {
                    return 'Por favor, confirme sua senha';
                  }
                  if (value != _senhaController.text) {
                    return 'As senhas não coincidem';
                  }
                  return null;
                },
              ),
              SizedBox(height: 40.0),
              ElevatedButton(
                onPressed: () {
                  var condicao = _formKey.currentState?.validate();
                  if (condicao != null) {
                    if (condicao) {
                      // Lógica de cadastro aqui
                      String nome = _nomeController.text;
                      String email = _emailController.text;
                      String dataNascimento = _dataNascimentoController.text;
                      String cep = _cepController.text;
                      String logradouro = _logradouroController.text;
                      String numero = _numeroController.text;
                      String cidade = _cidadeController.text;
                      String estado = _estadoController.text;
                      String senha = _senhaController.text;

                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => TelaLogin()),
                      );
                    }
                  }
                },
                child: Text('Cadastrar'),
              ),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}
