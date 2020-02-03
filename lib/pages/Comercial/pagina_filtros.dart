import 'package:app_bi/repository/Service.dart';
import 'package:flutter/material.dart';

class PaginaDeFiltrosComercial extends StatefulWidget {
  @override
  _PaginaDeFiltrosComercialState createState() =>
      _PaginaDeFiltrosComercialState();
}

class _PaginaDeFiltrosComercialState extends State<PaginaDeFiltrosComercial> {
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
          "Página de Filtros - Comercial",
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
                    "assets/images/PaginaDeFiltros.png",
                    context,
                  ),
                  Service.adicionarTextoPadrao(
                    "Filtros Dia/Mês/Ano para filtragem de datas específicas;",
                    15,
                    Colors.black,
                  ),
                  Service.adicionarTextoPadrao(
                    "Intervalo de Data para filtrar um período;",
                    15,
                    Colors.black,
                  ),
                  Service.adicionarTextoPadrao(
                    "Adicionar os Custos abaixo: Adicionar os custos que devem ser considerados no cálculo do lucro/rentabilidade;",
                    15,
                    Colors.black,
                  ),
                  Service.adicionarTextoPadrao(
                    "Outros Filtros: Filtrar dados específicos de acordo com suas escolhas, criando assim várias possibilidades a serem vistas, como:",
                    15,
                    Colors.black,
                  ),
                  Service.mostrarColuna([
                    "TopN Produtos de um gerente/vendedor específico;",
                    "Cohort de acordo com uma filial;",
                  ], 56),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
