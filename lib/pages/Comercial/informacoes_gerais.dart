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
                  _terceiraQuestao(),
                  _quartaQuestao(),
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
        Service.adicionarTextoPadrao(
          "Como volto na página inicial(Home)?",
          18,
          Colors.black,
        ),
        Service.adicionarTextoPadrao(
          "Ao clicar na logo da Atak Sistemas em qualquer tela, você será redirecionado a home.",
          14,
          Colors.grey.shade600,
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
        Service.adicionarTextoPadrao(
          "Qual a função dos ícones no canto superior direito de muitas telas?",
          18,
          Colors.black,
        ),
        Service.adicionarImagem(
            60, "assets/images/Comercial/Icones.png", context),
        Service.adicionarTextoPadrao(
          "1. Painel de Agrupadores: Ao selecioná-lo irá abrir o painel de agrupadores da respectiva tela, nele você pode alterar por qual informação o dado está sendo vizualizado, ex: Atualmente está o padrão(Estado), mas gostaria de vizualizar o topN Faturamento por 'Produtos', basta:",
          14,
          Colors.grey.shade600,
        ),
        Service.mostrarColuna(
          ["Estar na tela de 'TopN'", "Abrir o painel e selecionar 'Produtos'"],
          56,
        ),
        Service.adicionarTextoPadrao(
          "2. Página de Filtros: Abre a página de filtros, nela você pode alterar como deseja que a informação seja filtrada, por exemplo:",
          14,
          Colors.grey.shade600,
        ),
        Service.mostrarColuna(
          ["Apenas um Ano", "Apenas um Mês", "Apenas dos clientes X, Y, Z"],
          84,
        ),
        Service.adicionarTextoPadrao(
          "3. Limpar Página: Ao selecionar este ícone a página sera 'limpada', ou seja, ela irá voltar ao estado padrão que foi definido, removendo todos os filtros realizados.",
          14,
          Colors.grey.shade600,
        ),
        Service.mostrarColuna(
          ["Agrupador: Estado", "Métrica: Faturamentos"],
          56,
        ),
        Divider(
          color: Colors.grey,
        ),
      ],
    );
  }

  Widget _terceiraQuestao() {
    return Column(
      children: <Widget>[
        Service.adicionarTextoPadrao(
          "O que seria Drill Down e como utilizo?",
          18,
          Colors.black,
        ),
        Service.adicionarTextoPadrao(
          "O Drill Down e o Drill Up são ações para a navegação entre as hierarquias do gráfico, por exemplo, um gráfico com vários niveis de data(Ano/Mês/Semana) para uma vizualização sem níveis iria ficar totalmente poluído e dificil compreensão, agora com níveis e hierarquia a vizualização se torna muito mais prática e fácil.",
          14,
          Colors.grey.shade600,
        ),
        Service.adicionarTextoPadrao(
          "Mas como utilizar? Simples, todos os gráficos que contem níveis são marcados suas hierarquias com barras '/', ex: 'Ano/Mês/Semana', para utilizar basta ativar o Drill Down e clicar no item que deseja expandir",
          14,
          Colors.grey.shade600,
        ),
        Service.adicionarImagem(
            225, "assets/images/Comercial/drilldown.png", context),
        Service.adicionarImagem(
            225, "assets/images/Comercial/drilldown2.png", context),
        Divider(
          color: Colors.grey,
        ),
      ],
    );
  }

  Widget _quartaQuestao() {
    return Column(
      children: <Widget>[
        Service.adicionarTextoPadrao(
          "Qual a função dos icones de drill que aparecem nos gráficos?",
          18,
          Colors.black,
        ),
        Service.adicionarImagem(
            30, "assets/images/Comercial/iconesdrill.png", context),
        Service.adicionarTextoPadrao(
          "1. Drill Up: Subir um nível na hierarquia",
          14,
          Colors.grey.shade600,
        ),
        Service.adicionarTextoPadrao(
          "2. Drill Down: Descer um nível na hierarquia, para utilizar basta ativar e selecionar um dos valores, caso tenha um nível abaixo ele irá descer",
          14,
          Colors.grey.shade600,
        ),
        Service.adicionarTextoPadrao(
          "3. Next Level: Desce para o próximo nível de todos os níveis acima, ex:",
          14,
          Colors.grey.shade600,
        ),
        Service.mostrarColuna(
          [
            "Valor de cada mês no ano",
            "Valor total de cada semana",
            "Valor total de cada dia",
            "2019 -> jan -> semana 1 -> segunda-feira",
            "ou seja, agrupa todos os dados"
          ],
          140,
        ),
        Service.adicionarTextoPadrao(
          "4. Expande o próximo nivel separando de acordo com o nível acima, ex:",
          14,
          Colors.grey.shade600,
        ),
        Divider(
          color: Colors.grey,
        ),
      ],
    );
  }
}
