import 'package:flutter/material.dart';
import 'package:projeto_veiculos/componentes/drawer_personalisado.dart';

class TelaParametros extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela de Parâmetros'),
      ),
      drawer: DrawerPersonalisado(),
      body: Text("Parâmetros do App"),
    );
  }
}
