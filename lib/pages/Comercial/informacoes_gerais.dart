import 'package:app_bi/pages/paginaImagens.dart';
import 'package:app_bi/repository/Service.dart';
import 'package:flutter/material.dart';

class InformacoesGeraisComercial extends StatefulWidget {
  @override
  _InformacoesGeraisComercialState createState() =>
      _InformacoesGeraisComercialState();
}

class _InformacoesGeraisComercialState
    extends State<InformacoesGeraisComercial> {
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
          "Informações Gerais - Comercial",
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
                  _primeiraQuestao(),
                  _segundaQuestao(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _primeiraQuestao() {
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          child: Service.adicionarTextoPadrao(
            "Como volto na página inicial(Home)?",
            18,
            Colors.black,
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Service.adicionarTextoPadrao(
            "Ao clicar na logo da Atak Sistemas em qualquer tela, você será redirecionado a home.",
            14,
            Colors.grey.shade600,
          ),
        ),
        Divider(
          color: Colors.grey,
        ),
      ],
    );
  }

  Widget _segundaQuestao() {
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          child: Service.adicionarTextoPadrao(
            "Qual a função dos ícones no canto superior direito de muitas telas?",
            18,
            Colors.black,
          ),
        ),
        Service.adicionarImagem(60, "assets/images/Icones.png", context),
        Container(
          alignment: Alignment.centerLeft,
          child: Service.adicionarTextoPadrao(
            "Ao clicar na logo da Atak Sistemas em qualquer tela, você será redirecionado a home.",
            14,
            Colors.grey.shade600,
          ),
        ),
        Divider(
          color: Colors.grey,
        ),
      ],
    );
  }
}
