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
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
      child: Text(
        texto,
        style: TextStyle(
          fontSize: tamanhoFonte,
          color: cor,
        ),
      ),
    );
  }
}
