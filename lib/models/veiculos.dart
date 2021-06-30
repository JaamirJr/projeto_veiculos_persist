import 'package:flutter/material.dart';

class Veiculos {
  final String id;
  final String id_montadora;
  final String modelo;
  final String ano;
  final String combustivel;
  final double valor;
  final String imagem;

  const Veiculos({
    @required this.id,
    this.id_montadora = 'df',
    @required this.modelo,
    @required this.ano,
    @required this.combustivel,
    @required this.valor,
    this.imagem,
  });

  toJson() {
    return {
      "id": id,
      "id_montadora": id_montadora,
      "modelo": modelo,
      "ano": ano,
      "combustivel": combustivel,
      "valor": valor,
      "imagem": imagem,
    };
  }
}
