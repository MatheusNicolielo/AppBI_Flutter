import 'package:app_bi/models/modulo_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModuloTile extends StatefulWidget {
  final ModuloModel _moduloModel;
  ModuloTile(this._moduloModel);

  @override
  _ModuloTileState createState() => _ModuloTileState();
}

class _ModuloTileState extends State<ModuloTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: const EdgeInsets.only(left: 16),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            _buidContainer1(),
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
        widget._moduloModel.pagina != null
            ? Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => widget._moduloModel.pagina),
              )
            : _mostrarAlertDialog(widget._moduloModel.nome);
      },
    );
  }

  Widget _buidContainer1() {
    return widget._moduloModel.nome == "Comercial"
        ? Icon(Icons.computer)
        : widget._moduloModel.nome == "Financeiro"
            ? Icon(Icons.money_off)
            : widget._moduloModel.nome == "Produção"
                ? Icon(Icons.priority_high)
                : Icon(Icons.public);
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
              widget._moduloModel.nome,
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
      fontSize: 24,
      color: Colors.blueGrey.shade700,
    );
  }

  void _mostrarAlertDialog(String nomeModulo) {
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    AlertDialog alerta = AlertDialog(
      title: Text("Módulo - $nomeModulo"),
      content: Text("Módulo ainda não disponível!"),
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
