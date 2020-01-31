import 'package:app_bi/models/lista_conteudos_model.dart';
import 'package:app_bi/pages/Comercial/menu_inical.dart';
import 'package:app_bi/tile/lista_conteudos_tile.dart';
import 'package:flutter/material.dart';

import 'informacoes_gerais.dart';

class ComercialPage extends StatefulWidget {
  var conteudos = new List<ListaConteudosModel>();

  ComercialPage() {
    conteudos.add(
      ListaConteudosModel(
        id: DateTime.now().millisecondsSinceEpoch,
        item: "Menu Inicial",
        lugar: 1,
        pagina: MenuInicialComercial(),
      ),
    );
    conteudos.add(
      ListaConteudosModel(
        id: DateTime.now().millisecondsSinceEpoch,
        item: "Informações Gerais",
        lugar: 2,
        pagina: InformacoesGeraisComercial(),
      ),
    );
    conteudos.add(
      ListaConteudosModel(
        id: DateTime.now().millisecondsSinceEpoch,
        item: "Página de Filtros",
        lugar: 3,
      ),
    );
    conteudos.add(
      ListaConteudosModel(
        id: DateTime.now().millisecondsSinceEpoch,
        item: "Vendas",
        lugar: 4,
      ),
    );
    conteudos.add(
      ListaConteudosModel(
        id: DateTime.now().millisecondsSinceEpoch,
        item: "Retenção",
        lugar: 5,
      ),
    );
    conteudos.add(
      ListaConteudosModel(
        id: DateTime.now().millisecondsSinceEpoch,
        item: "Outros",
        lugar: 6,
      ),
    );
  }

  @override
  _ComercialPageState createState() => _ComercialPageState();
}

class _ComercialPageState extends State<ComercialPage> {
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
          "Módulo Comercial",
          style: TextStyle(color: Colors.red.shade900),
        ),
      ),
      body: Column(
        children: <Widget>[
          _tituloListaConteudos(),
          Expanded(
            child: _lista(),
          ),
        ],
      ),
    );
  }

  Widget _lista() {
    return ListView.separated(
      itemCount: widget.conteudos.length,
      separatorBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Divider(
            color: Colors.grey.shade400,
          ),
        );
      },
      itemBuilder: (context, index) {
        return ListaConteudosTile(widget.conteudos.elementAt(index));
      },
    );
  }

  Widget _tituloListaConteudos() {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        height: 40,
        alignment: Alignment.centerLeft,
        child: Text(
          "Lista de Conteúdos",
          style: TextStyle(
            color: Colors.grey.shade600,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
