import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:projeto_veiculos/models/veiculos.dart';
import 'package:projeto_veiculos/utils/variaveis.dart';
import 'package:http/http.dart' as http;

class TelaFormVeiculos extends StatefulWidget {
  @override
  _TelaFormVeiculosState createState() => _TelaFormVeiculosState();
}

class _TelaFormVeiculosState extends State<TelaFormVeiculos> {
  final form = GlobalKey<FormState>();
  final dadosForm = Map<String, Object>();

  void saveForm() {
    var formValido = form.currentState.validate();
    form.currentState.save();
    var aux = dadosForm['modelo'].toString().split(' ');
    var id = aux[0].toLowerCase();

    final novoVeiculo = Veiculos(
      id: id,
      ano: dadosForm['ano'],
      combustivel: dadosForm['combustivel'],
      modelo: dadosForm['modelo'],
      valor: double.parse(dadosForm['valor']),
    );
    if (formValido) {
      var url = Uri.https(Variaveis.BACKURL, '/veiculos.json');
      http
          .post(url,
              body: jsonEncode(
                novoVeiculo.toJson(),
              ))
          .then((value) {
        print(value.body);
        Navigator.of(context).pop();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formulário Veiculos"),
        actions: [
          IconButton(
              icon: Icon(Icons.save),
              onPressed: () {
                saveForm();
              })
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Form(
          key: form,
          child: ListView(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Modelo'),
                textInputAction: TextInputAction.next,
                onSaved: (value) {
                  dadosForm['modelo'] = value;
                },
                validator: (value) {
                  if (value.trim().isEmpty) {
                    return "Informe um modelo válido";
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Ano'),
                textInputAction: TextInputAction.next,
                onSaved: (value) {
                  dadosForm['ano'] = value;
                },
                validator: (value) {
                  if (value.trim().isEmpty) {
                    return "Informe um ano válido";
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Valor'),
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.number,
                onSaved: (value) {
                  dadosForm['valor'] = value;
                },
                validator: (value) {
                  if (value.trim().isEmpty) {
                    return "Informe um valor válido";
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Combustível'),
                textInputAction: TextInputAction.done,
                onSaved: (value) {
                  dadosForm['combustivel'] = value;
                },
                validator: (value) {
                  if (value.trim().isEmpty) {
                    return "Informe um combustível válido";
                  }
                  return null;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
