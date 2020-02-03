import 'package:app_bi/models/lista_vendas_model.dart';
import 'package:flutter/material.dart';

class ListaVendasTile extends StatefulWidget {
  final ListaVendasModel _listaVendasModel;
  ListaVendasTile(this._listaVendasModel);

  @override
  _ListaVendasTileState createState() => _ListaVendasTileState();
}

class _ListaVendasTileState extends State<ListaVendasTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: const EdgeInsets.only(left: 16),
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            _buildContainer1(widget._listaVendasModel.lugar),
            Expanded(
              child: _buildContainer2(),
            ),
            Expanded(
              child: _buildContainer3(),
            ),
          ],
        ),
      ),
      onTap: () {
        widget._listaVendasModel.pagina != null
            ? Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => widget._listaVendasModel.pagina),
              )
            : _mostrarAlertDialog(widget._listaVendasModel.item);
      },
    );
  }

  Widget _buildContainer1(int contador) {
    return Text(
      "$contador.",
      style: _textStyle(FontWeight.w500),
    );
  }

  Widget _buildContainer2() {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Container(
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              widget._listaVendasModel.item,
              style: _textStyle(FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContainer3() {
    return Padding(
      padding: const EdgeInsets.only(left: 110, right: 20, top: 5),
      child: Container(
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }

  TextStyle _textStyle([FontWeight fontWeight]) {
    return TextStyle(
      fontSize: 18,
      color: Colors.blueGrey.shade700,
    );
  }

  void _mostrarAlertDialog(String nomeDoc) {
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    AlertDialog alerta = AlertDialog(
      title: Text("$nomeDoc"),
      content: Text("Ainda não disponível!"),
      actions: <Widget>[
        okButton,
      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alerta;
      },
    );
  }
}
