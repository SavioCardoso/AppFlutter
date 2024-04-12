import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'TelaLogin.dart';

class TelaHome extends StatelessWidget {
  final String email;
  TelaHome(this.email);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bem vindo, ${email}'),
        ),
        body: HomeForm(),
      ),
    );
  }
}

class HomeForm extends StatefulWidget {
  @override
  _HomeFormState createState() => _HomeFormState();
}

class _HomeFormState extends State<HomeForm> {
  Future<dynamic> exibeAlerta(int indice) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Alerta"),
            content: Text("Você clicou no item [${indice}]"),
            actions: <Widget>[
              FloatingActionButton(
                onPressed: () {
                  print("Selecionado sim");
                  Navigator.pop(context);
                },
                child: Text("Sim"),
              ),
              FloatingActionButton(
                onPressed: () {
                  print("Selecionado não");
                  Navigator.pop(context);
                },
                child: Text("Não"),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.apple),
          title: Text('Maçã'),
          subtitle: Text('Essa é uma maçã'),
          onTap: () {
            exibeAlerta(0);
          },
        ),
        ListTile(
          leading: Icon(Icons.favorite),
          title: Text('Coração'),
          subtitle: Text('Esse é um coração'),
          onTap: () {
            exibeAlerta(1);
          },
        ),
        ListTile(
          leading: Icon(Icons.camera),
          title: Text('Câmera'),
          subtitle: Text('Essa é uma câmera'),
          onTap: () {
            exibeAlerta(2);
          },
        ),
        ListTile(
          leading: Icon(Icons.airplanemode_on),
          title: Text('Avião'),
          subtitle: Text('Esse é um avião'),
          onTap: () {
            exibeAlerta(3);
          },
        ),
        ListTile(
          leading: Icon(Icons.bus_alert),
          title: Text('Ônibus'),
          subtitle: Text('Esse é um ônibus'),
          onTap: () {
            exibeAlerta(4);
          },
        ),
        ListTile(
          leading: Icon(Icons.apple),
          title: Text('Maçã'),
          subtitle: Text('Essa é uma maçã'),
          onTap: () {
            exibeAlerta(5);
          },
        ),
        ListTile(
          leading: Icon(Icons.favorite),
          title: Text('Coração'),
          subtitle: Text('Esse é um coração'),
          onTap: () {
            exibeAlerta(6);
          },
        ),
        ListTile(
          leading: Icon(Icons.camera),
          title: Text('Câmera'),
          subtitle: Text('Essa é uma câmera'),
          onTap: () {
            exibeAlerta(7);
          },
        ),
        ListTile(
          leading: Icon(Icons.airplanemode_on),
          title: Text('Avião'),
          subtitle: Text('Esse é um avião'),
          onTap: () {
            exibeAlerta(8);
          },
        ),
        ListTile(
          leading: Icon(Icons.bus_alert),
          title: Text('Ônibus'),
          subtitle: Text('Esse é um ônibus'),
          onTap: () {
            exibeAlerta(9);
          },
        ),
        ListTile(
          leading: Icon(Icons.apple),
          title: Text('Maçã'),
          subtitle: Text('Essa é uma maçã'),
          onTap: () {
            exibeAlerta(10);
          },
        ),
        ListTile(
          leading: Icon(Icons.favorite),
          title: Text('Coração'),
          subtitle: Text('Esse é um coração'),
          onTap: () {
            exibeAlerta(11);
          },
        ),
        ListTile(
          leading: Icon(Icons.camera),
          title: Text('Câmera'),
          subtitle: Text('Essa é uma câmera'),
          onTap: () {
            exibeAlerta(12);
          },
        ),
        ListTile(
          leading: Icon(Icons.airplanemode_on),
          title: Text('Avião'),
          subtitle: Text('Esse é um avião'),
          onTap: () {
            exibeAlerta(13);
          },
        ),
        ListTile(
          leading: Icon(Icons.bus_alert),
          title: Text('Ônibus'),
          subtitle: Text('Esse é um ônibus'),
          onTap: () {
            exibeAlerta(14);
          },
        ),
        ListTile(
          leading: Icon(Icons.apple),
          title: Text('Maçã'),
          subtitle: Text('Essa é uma maçã'),
          onTap: () {
            exibeAlerta(15);
          },
        ),
        ListTile(
          leading: Icon(Icons.favorite),
          title: Text('Coração'),
          subtitle: Text('Esse é um coração'),
          onTap: () {
            exibeAlerta(16);
          },
        ),
        ListTile(
          leading: Icon(Icons.camera),
          title: Text('Câmera'),
          subtitle: Text('Essa é uma câmera'),
          onTap: () {
            exibeAlerta(17);
          },
        ),
        ListTile(
          leading: Icon(Icons.airplanemode_on),
          title: Text('Avião'),
          subtitle: Text('Esse é um avião'),
          onTap: () {
            exibeAlerta(18);
          },
        ),
        ListTile(
          leading: Icon(Icons.bus_alert),
          title: Text('Ônibus'),
          subtitle: Text('Esse é um ônibus'),
          onTap: () {
            exibeAlerta(19);
          },
        ),
      ],
    );
  }
}
