import 'package:app_bi/pages/paginaImagens.dart';
import 'package:app_bi/repository/Service.dart';
import 'package:flutter/material.dart';

class MenuInicialComercial extends StatefulWidget {
  @override
  _MenuInicialComercialState createState() => _MenuInicialComercialState();
}

class _MenuInicialComercialState extends State<MenuInicialComercial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0.5,
        leading: InkWell(
          child: Icon(
            Icons.arrow_back,
            color: Colors.red.shade900,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Menu Inicial - Comercial",
          style: TextStyle(color: Colors.red.shade900),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: SizedBox(
              width: double.infinity,
              child: Column(
                children: <Widget>[
                  Service.adicionarImagem(
                    225,
                    "assets/images/menu_inicial.png",
                    context,
                  ),
                  Service.adicionarTextoPadrao(
                    "No menu inicial é possível ter o acesso a todas as telas, que estão dividias em submenus, atualmente eles são:",
                    15,
                    Colors.black,
                  ),
                  _mostrarLinhaSubmenus(),
                  Service.adicionarTextoPadrao(
                    "Além disso conta com o horário da última atualização dos dados, ou seja, os valores exibidos estão atualizados até o dia e hora especificados.",
                    15,
                    Colors.black,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _mostrarLinhaSubmenus() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Icon(
          Icons.lens,
          size: 10,
        ),
        Text(
          " Vendas",
          style: TextStyle(fontSize: 15),
        ),
        Icon(
          Icons.lens,
          size: 10,
        ),
        Text(
          " Retenção",
          style: TextStyle(fontSize: 15),
        ),
        Icon(
          Icons.lens,
          size: 10,
        ),
        Text(
          " Outros",
          style: TextStyle(fontSize: 15),
        ),
      ],
    );
  }
}
