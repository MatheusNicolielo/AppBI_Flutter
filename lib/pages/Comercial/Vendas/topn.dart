import 'package:app_bi/repository/Service.dart';
import 'package:flutter/material.dart';

class TopNComercial extends StatefulWidget {
  @override
  _TopNComercialState createState() => _TopNComercialState();
}

class _TopNComercialState extends State<TopNComercial> {
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
          "TopN - Comercial",
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
                    "assets/images/Comercial/topN.png",
                    context,
                  ),
                  Service.adicionarTextoPadrao(
                    "Visualizar os top valores de acordo com a métrica escolhida. É possível ver rapidamente os top 10 melhores e os top 10 piores valores, tabela com respectivo valor e a % dele no total/todo, além da lista de 10 melhores cidades de acordo com os filtros escolhidos.",
                    15,
                    Colors.black,
                  ),
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
                    "     1. Top 10 Maiores Valores de acordo com o Agrupador e a Métrica(Valor) selecionados;",
                    14,
                    Colors.grey.shade600,
                  ),
                  Service.adicionarTextoPadrao(
                    "     2. Arredondamento em 'Milhares'(K ou Mil);",
                    14,
                    Colors.grey.shade600,
                  ),
                  Service.adicionarTextoPadrao(
                    "     3. Dados estão ordenado do Maior para o Menor valor;",
                    14,
                    Colors.grey.shade600,
                  ),
                  Service.adicionarTextoPadrao(
                    "     4. Se deixar o mouse encima de um valor é possível ver o valor completo sem arredondamento;",
                    14,
                    Colors.grey.shade600,
                  ),
                  Service.adicionarTextoPadrao(
                    "     5. Ao Selecionar um valor, o mesmo será filtrado no restante da página(Menos Menores Valores), ex: ",
                    14,
                    Colors.grey.shade600,
                  ),
                  Service.mostrarColuna([
                    "Ao selecionar 'PR - Paraná', o mesmo será o único na \ntabela, além disso no mapa só será mostrado o Paraná;",
                  ], 56),
                  // ------
                  Service.adicionarTextoPadrao(
                    "Top 10 Menores Valores",
                    16,
                    Colors.black,
                  ),
                  Service.adicionarTextoPadrao(
                    "     1. Top 10 Menores Valores de acordo com o Agrupador e a Métrica(Valor) selecionados;",
                    14,
                    Colors.grey.shade600,
                  ),
                  Service.adicionarTextoPadrao(
                    "     2. Arredondamento em 'Milhares'(K ou Mil);",
                    14,
                    Colors.grey.shade600,
                  ),
                  Service.adicionarTextoPadrao(
                    "     3. Dados estão ordenado do Maior para o Menor valor;",
                    14,
                    Colors.grey.shade600,
                  ),
                  Service.adicionarTextoPadrao(
                    "     4. Se deixar o mouse encima de um valor é possível ver o valor completo sem arredondamento;",
                    14,
                    Colors.grey.shade600,
                  ),
                  Service.adicionarTextoPadrao(
                    "     5. Ao Selecionar um valor, o mesmo será filtrado no restante da página(Menos Maiores Valores), exemplo:",
                    14,
                    Colors.grey.shade600,
                  ),
                  Service.mostrarColuna([
                    "Selecionando 'Paraná', o mesmo será o único na \ntabela, além disso no mapa só será mostrado o Paraná;",
                  ], 56),
                  // ------
                  Service.adicionarTextoPadrao(
                    "Tabela",
                    16,
                    Colors.black,
                  ),
                  Service.adicionarTextoPadrao(
                    "     1. Top 15 Valores de acordo com o Agrupador e a Métrica(Valor) selecionados;",
                    14,
                    Colors.grey.shade600,
                  ),
                  Service.adicionarTextoPadrao(
                    "     2. Valor: Métrica/Valor selecionado Final, sem arredondamento;",
                    14,
                    Colors.grey.shade600,
                  ),
                  Service.adicionarTextoPadrao(
                    "     3. %: Porcentagem do valor no todo;",
                    14,
                    Colors.grey.shade600,
                  ),
                  Service.adicionarTextoPadrao(
                    "     4. Ao selecionar um valor, o mesmo irá filtrar o mapa e trazer as respectivas cidades correspondentes;",
                    14,
                    Colors.grey.shade600,
                  ),
                  Service.adicionarTextoPadrao(
                    "     5. No Ícone '+' é possivel acessar a tabela mostrando todos os valores, ou seja, não apenas os top 15;",
                    14,
                    Colors.grey.shade600,
                  ),
                  Service.adicionarTextoPadrao(
                    "     6. Na Página de todos os valores, é possível pesquisar de acordo com o nome do mesmo, ou selecioná-lo;",
                    14,
                    Colors.grey.shade600,
                  ),
                  Service.adicionarTextoPadrao(
                    "     7. Caso queira voltar a página resumida, basta selecionar a seta/flecha de voltar no canto superior direito;",
                    14,
                    Colors.grey.shade600,
                  ),
                  // ------
                  Service.adicionarTextoPadrao(
                    "Mapa",
                    16,
                    Colors.black,
                  ),
                  Service.adicionarTextoPadrao(
                    "     1. Top 10 Municípios de acordo com a Métrica selecionada;",
                    14,
                    Colors.grey.shade600,
                  ),
                  Service.adicionarTextoPadrao(
                    "     2. Zoom in e Zoom out;",
                    14,
                    Colors.grey.shade600,
                  ),
                  Service.adicionarTextoPadrao(
                    "     3. Ao deixar o mouse encima de algum valor é possível vizualizar o nome do município, estado e o valor;",
                    14,
                    Colors.grey.shade600,
                  ),
                  Service.adicionarTextoPadrao(
                    "     4. Os Municípios no mapa são mostrados de acordo com o valor selecionado do Agrupador, por exemplo:",
                    14,
                    Colors.grey.shade600,
                  ),
                  Service.mostrarColuna([
                    "Caso não contenha nada selecionado, o mesmo irá \nmostrar os top 10 Municípios;",
                    "Ao Selecionar um estado, irá trazer os top 10 Muni-\ncípios do mesmo;",
                    "Ao Selecionar um cliente, o local de cadastro do mesmo;",
                    "Ao Selecionar um Produto, os locais onde ele é mais \nvendido;",
                    "Ao Selecionar um Vendedor, os locais onde ele mais \nvende;",
                    "Obs: Para selecionar basta utilizar a tabela acima.",
                  ], 220),
                  Service.adicionarImagem(
                    225,
                    "assets/images/Comercial/ValorSelecionadoMapa.png",
                    context,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
