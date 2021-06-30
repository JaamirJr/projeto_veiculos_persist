import 'package:flutter/material.dart';
import 'package:projeto_veiculos/models/montadora.dart';

class ItemListaMontadora extends StatelessWidget {
  final Montadora montadora;

  ItemListaMontadora(this.montadora);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: montadora.color),
      child: ListTile(
        title: Container(
          child: Text(
            montadora.nome,
            style: TextStyle(color: Colors.white),
          ),
        ),
        trailing: Container(
          width: 100,
          child: Row(
            children: [
              IconButton(
                icon: Icon(Icons.edit),
                onPressed: () {
                  print("Editar");
                },
                color: Colors.grey,
              ),
              IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {
                  print("Apagar");
                },
                color: Colors.purple,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
