import 'package:app_bi/repository/Service.dart';
import 'package:flutter/material.dart';

class PeriodoComercial extends StatefulWidget {
  @override
  _PeriodoComercialState createState() => _PeriodoComercialState();
}

class _PeriodoComercialState extends State<PeriodoComercial> {
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
          "Período - Comercial",
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
                    "assets/images/Comercial/periodo.png",
                    context,
                  ),
                  Service.adicionarTextoPadrao(
                    "Visualizar como foram os valores no decorrer do tempo/ de acordo com o filtro e agrupadores escolhidos. É possível ver o ano a ano, por ano como foi o 'Ano Selecionado' e o 'Ano Anterior' de cada agrupador, além disso o gráfico MoM e um geral que os valoras vão até cada Dia da Semana.",
                    15,
                    Colors.black,
                  ),
                  // ------
                  Divider(
                    color: Colors.grey,
                  ),
                  Service.adicionarTextoPadrao(
                    "Vizualizações",
                    18,
                    Colors.grey.shade600,
                  ),
                  // ------
                  Service.adicionarTextoPadrao(
                    "Top 10 Maiores Valores",
                    16,
                    Colors.black,
                  ),
                  Service.adicionarTextoPadrao(
                    "     1. Valor da Métrica selecionada por ano;",
                    14,
                    Colors.grey.shade600,
                  ),
                  // ------
                  Service.adicionarTextoPadrao(
                    "Tabela",
                    16,
                    Colors.black,
                  ),
                  Service.adicionarTextoPadrao(
                    "     1. Dividida em níveis, onde o 1º é o ano e o segundo os valores do agrupador selecionado;",
                    14,
                    Colors.grey.shade600,
                  ),
                  Service.adicionarTextoPadrao(
                    "     2. % : Porcentagem do valor no todo;",
                    14,
                    Colors.grey.shade600,
                  ),
                  Service.adicionarTextoPadrao(
                    "     3. Ano Selecionado: Valor da métrica no ano selecionado, ou seja, depende dos níveis, no caso da imagem está o ano de 2019, o valor do mesmo e para cada agrupador;",
                    14,
                    Colors.grey.shade600,
                  ),
                  Service.adicionarTextoPadrao(
                    "     4. Ano Anterior: Valor da métrica no ano anterior, ou seja, depende dos níveis, no caso da imagem está o ano de 2019, o valor seria referente ao ano de 2018 para cada agrupador;",
                    14,
                    Colors.grey.shade600,
                  ),
                  Service.adicionarTextoPadrao(
                    "     5. Diferença Vendas: Diferença de valor entre os anos. Ano Seleciona - Absoluto(Ano Anterior);",
                    14,
                    Colors.grey.shade600,
                  ),
                  Service.adicionarTextoPadrao(
                    "     6. Ao selecionar um valor, o mesmo irá filtrar ou realçar o restante da página, por exemplo:",
                    14,
                    Colors.grey.shade600,
                  ),
                  Service.mostrarColuna([
                    "Selecionando 'PR - Paraná';",
                  ], 32),
                  Service.adicionarImagem(
                    225,
                    "assets/images/Comercial/pr-parana.png",
                    context,
                  ),
                  Service.mostrarColuna([
                    "No gráfico 'Ano', irá realçar o valor daquele agrupador \nno Ano;",
                    "No gráfico '% do Mês Atual em relação ao Mês \nAnterior', valor mês a mês do mesmo, juntamente do \nvalor MoM entre eles;",
                    "No gráfico 'Ano/Mês/Semana/Dia da Semana', é possível \nfazer o drill down do valor de acordo com uma hierarquia \nde data, os níveis são: Ano, Mês, Semana e os Dias \ndaquela Semana;",
                  ], 174),
                  // ------
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
