import 'package:app_bi/pages/paginaImagens.dart';
import 'package:flutter/material.dart';

class Service {
  static Widget adicionarImagem(
    double tamanhoHeight,
    String imagem,
    BuildContext contextoNavigator,
  ) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, left: 5, right: 5, bottom: 5),
      child: Container(
        height: tamanhoHeight,
        width: double.infinity,
        child: InkWell(
          child: Image(
            image: AssetImage(
              imagem,
            ),
          ),
          onTap: () {
            Navigator.push(
              contextoNavigator,
              MaterialPageRoute(
                builder: (context) => ImagesPage(imagem),
              ),
            );
          },
        ),
      ),
    );
  }

  static Widget adicionarTextoPadrao(
    String texto,
    double tamanhoFonte,
    Color cor,
  ) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
        child: Text(
          texto,
          style: TextStyle(
            fontSize: tamanhoFonte,
            color: cor,
          ),
        ),
      ),
    );
  }

  static Widget _mostrarLinhasDaColuna(String texto) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          Icons.lens,
          size: 10,
        ),
        Service.adicionarTextoPadrao(
          texto,
          15,
          Colors.grey.shade600,
        )
      ],
    );
  }
}

  Widget getTextWidgets(List<String> strings) {
    List<Widget> list = new List<Widget>();
    for (var i = 0; i < strings.length; i++) {
      list.add(
        Service._mostrarLinhasDaColuna(strings[i]),
      );
    }
    return Column(children: list);
  }

 Widget _mostrarColuna(List<String> textos, double tamanhoColuna){
    return Container(
      height: tamanhoColuna,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          getTextWidgets(textos),
        ],
      ),
    );
  }
}
