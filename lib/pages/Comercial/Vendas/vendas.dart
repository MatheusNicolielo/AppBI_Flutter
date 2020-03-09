import 'package:app_bi/models/lista_vendas_model.dart';
import 'package:app_bi/pages/Comercial/Vendas/periodo.dart';
import 'package:app_bi/pages/Comercial/Vendas/topn.dart';
import 'package:app_bi/repository/Service.dart';
import 'package:app_bi/tile/lista_vendas_tile.dart';
import 'package:flutter/material.dart';

class VendasComercial extends StatefulWidget {
  var vendas = new List<ListaVendasModel>();

  VendasComercial() {
    vendas.add(
      ListaVendasModel(
        id: DateTime.now().millisecondsSinceEpoch,
        item: "TopN",
        lugar: 1,
        pagina: TopNComercial(),
      ),
    );
    vendas.add(
      ListaVendasModel(
        id: DateTime.now().millisecondsSinceEpoch,
        item: "Período",
        lugar: 2,
        pagina: PeriodoComercial(),
      ),
    );
    vendas.add(
      ListaVendasModel(
        id: DateTime.now().millisecondsSinceEpoch,
        item: "Diário",
        lugar: 3,
      ),
    );
    vendas.add(
      ListaVendasModel(
        id: DateTime.now().millisecondsSinceEpoch,
        item: "Oscilações",
        lugar: 4,
      ),
    );
  }

  @override
  _VendasComercialState createState() => _VendasComercialState();
}

class _VendasComercialState extends State<VendasComercial> {
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
          "Vendas - Comercial",
          style: TextStyle(color: Colors.red.shade900),
        ),
      ),
      body: Column(
        children: <Widget>[
          Service.adicionarTextoPadrao(
            "Irá conter todas as vizualizações que envolvem informar dados de vendas, Exemplo:",
            15,
            Colors.black,
          ),
          Service.mostrarColuna(
            [
              "Faturamento Anual;",
              "Faturamento Mensal;",
              "Devolução;",
              "Lucro;",
              "Top Cidades;",
              "Top Produtos;",
              "Valor por dia do Mês de Abril;",
              "etc.",
            ],
            224,
          ),
          Divider(
            color: Colors.grey,
          ),
          Expanded(
            child: _lista(),
          ),
        ],
      ),
    );
  }

  Widget _lista() {
    return ListView.separated(
      itemCount: widget.vendas.length,
      separatorBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Divider(
            color: Colors.grey.shade400,
          ),
        );
      },
      itemBuilder: (context, index) {
        return ListaVendasTile(widget.vendas.elementAt(index));
      },
    );
  }
}
