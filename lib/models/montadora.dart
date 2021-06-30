import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class Montadora {
  final String id;
  final String nome;
  final Color color;

  const Montadora({
    @required this.id,
    @required this.nome,
    this.color = Colors.orange,
  });

  Montadora.fromSnapShot(DataSnapshot snapshot)
      : id = snapshot.key,
        nome = snapshot.value['nome'],
        color = snapshot.value['color'];

  toJson() {
    return {
      "id": id,
      "nome": nome,
      "color": color.toString(),
    };
  }
}
