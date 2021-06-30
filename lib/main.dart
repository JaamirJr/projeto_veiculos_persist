import 'package:flutter/material.dart';
import 'package:projeto_veiculos/telas/tela_cadastro_montadoras.dart';
import 'package:projeto_veiculos/telas/tela_cadastro_veiculos.dart';
import 'package:projeto_veiculos/telas/tela_form_montadora.dart';
import 'package:projeto_veiculos/telas/tela_form_veiculos.dart';
import 'package:projeto_veiculos/utils/rotas.dart';
import 'telas/tela_veiculos.dart';
import 'telas/tela_detalhes_veiculos.dart';
import 'telas/tela_guias.dart';
import 'telas/tela_parametros.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      routes: {
        Rotas.HOME: (ctx) => TelaTabulacao(),
        Rotas.VEICULOS: (ctx) => TelaVeiculos(),
        Rotas.DETALHES_VEICULOS: (ctx) => TelaDetalhes(),
        Rotas.PARAMETROS: (ctx) => TelaParametros(),
        Rotas.CAD_MONTADORAS: (ctx) => TelaCadastroMontadora(),
        Rotas.FORM_MONTADORAS: (ctx) => TelaFormMontadora(),
        Rotas.CAD_VEICULOS: (ctx) => TelaCadastroVeiculos(),
        Rotas.FORM_VEICULOS: (ctx) => TelaFormVeiculos(),
      },
      onGenerateRoute: (settings) {
        print(settings.name);
        return null;
      },
      onUnknownRoute: (settings) {
        print("rota nao encontrada");
        return null;
      },
    );
  }
}
