import 'package:flutter/material.dart';
import 'package:projeto_veiculos/componentes/drawer_personalisado.dart';
import 'package:projeto_veiculos/mockdata/veiculos.dart';
import 'package:projeto_veiculos/componentes/item_lista_veiculo.dart';
import 'package:projeto_veiculos/utils/rotas.dart';

class TelaCadastroVeiculos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final veiculos = VEICULOS_MOCK.toList();
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de Veículos"),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(Rotas.FORM_VEICULOS);
            },
          )
        ],
      ),
      drawer: DrawerPersonalisado(),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: ListView.builder(
          itemCount: veiculos.length,
          itemBuilder: (context, index) => Column(
            children: [
              ItemListaVeiculo(veiculos[index]),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
