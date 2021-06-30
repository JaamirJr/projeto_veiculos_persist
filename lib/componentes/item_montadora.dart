import 'package:flutter/material.dart';
import 'package:projeto_veiculos/utils/rotas.dart';

//importando meu modelo
import '../models/montadora.dart';

//importando a tela de veículos
import '../telas/tela_veiculos.dart';

class ItemMontadora extends StatelessWidget {
  final Montadora montadora;

  const ItemMontadora(this.montadora);

  void _selecinarVeiculo(BuildContext context) {
    Navigator.of(context).pushNamed(
      Rotas.VEICULOS,
      arguments: montadora,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _selecinarVeiculo(context);
      },
      splashColor: Colors.orange,
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(montadora.nome),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(colors: [
              montadora.color.withOpacity(0.5),
              montadora.color,
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
      ),
    );
  }
}
