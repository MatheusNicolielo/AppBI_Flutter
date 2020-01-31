import 'package:app_bi/models/modulo_model.dart';
import 'package:app_bi/pages/Comercial/comercial.dart';
import 'package:app_bi/tile/modulo_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  var modulos = new List<ModuloModel>();

  HomePage() {
    modulos.add(
      ModuloModel(
        id: DateTime.now().millisecondsSinceEpoch,
        nome: "Comercial",
        descricao: "teste",
        pagina: ComercialPage(),
      ),
    );
    modulos.add(
      ModuloModel(
        id: DateTime.now().millisecondsSinceEpoch + 2,
        nome: "Contábil",
        descricao: "teste2",
      ),
    );
    modulos.add(
      ModuloModel(
        id: DateTime.now().millisecondsSinceEpoch + 3,
        nome: "Produção",
        descricao: "teste3",
      ),
    );
  }

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0.5,
        leading: InkWell(
          child: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onTap: () {
            debugPrint("Menu");
          },
        ),
        title: Text(
          "Módulos BI - Atak Sistemas",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.separated(
        itemCount: widget.modulos.length,
        separatorBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Divider(
              color: Colors.grey.shade400,
            ),
          );
        },
        itemBuilder: (context, index) {
          return ModuloTile(widget.modulos.elementAt(index));
        },
      ),
    );
  }
}
