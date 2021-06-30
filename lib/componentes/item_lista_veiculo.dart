import 'package:flutter/material.dart';
import 'package:projeto_veiculos/mockdata/montadoras.dart';
import 'package:projeto_veiculos/models/veiculos.dart';

class ItemListaVeiculo extends StatelessWidget {
  final Veiculos veiculos;
  final montadora = MONTADORAS_MOCK.toList();

  ItemListaVeiculo(this.veiculos);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(color: Colors.grey),
      child: ListTile(
        title: Text(veiculos.modelo),
        subtitle: Text("Ano: ${veiculos.ano} - ${veiculos.combustivel}"),
      ),
    );
  }
}
