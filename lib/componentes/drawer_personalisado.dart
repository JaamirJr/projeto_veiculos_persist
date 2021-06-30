import 'package:flutter/material.dart';
import 'package:projeto_veiculos/utils/rotas.dart';

class DrawerPersonalisado extends StatelessWidget {
  Widget criarItem(IconData icon, String label, Function onTap) {
    return ListTile(
      leading: Icon(
        icon,
        size: 25,
      ),
      title: Text(
        label,
        style: TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Colors.green,
            alignment: Alignment.bottomLeft,
            child: Text("Aplicativo Veículos",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.white,
                )),
          ),
          SizedBox(
            height: 20,
          ),
          criarItem(
            Icons.local_car_wash,
            "Montadoras",
            () => Navigator.of(context).pushReplacementNamed(Rotas.HOME),
          ),
          criarItem(
            Icons.settings,
            "Configurações",
            () => Navigator.of(context).pushReplacementNamed(Rotas.PARAMETROS),
          ),
          criarItem(
            Icons.settings,
            "Cad. Montadoras",
            () => Navigator.of(context)
                .pushReplacementNamed(Rotas.CAD_MONTADORAS),
          ),
          criarItem(
            Icons.settings,
            "Cad. Veículos",
            () =>
                Navigator.of(context).pushReplacementNamed(Rotas.CAD_VEICULOS),
          ),
        ],
      ),
    );
  }
}
