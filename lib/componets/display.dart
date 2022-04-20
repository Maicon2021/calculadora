import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Display extends StatelessWidget {
  final String text;

  // construtor
  Display(this.text);

  @override // sobrescrevendo para pegar o texto como parametro
  Widget build(BuildContext context) {
    return Expanded(
      //Expanded flex 1 quer dizer que ele vai usar toda a coluna de espaço
      flex: 1,
      child: Container(
        color: Color.fromRGBO(48, 48, 48, 1),
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.end, // texto fique no fim da minha coluna
          crossAxisAlignment: CrossAxisAlignment
              .stretch, // minha coluna ocupar a tela toda até o fim dela
          children: <Widget>[
            // padding, espaçamento de 8.0 entre as letras
            Padding(
              padding: const EdgeInsets.all(8.0),
              //definindo o Layout do nosso display
              child: AutoSizeText(
                text,
                minFontSize: 20,
                maxFontSize: 80,
                maxLines: 1,
                textAlign: TextAlign.end,
                style: const TextStyle(
                  fontWeight: FontWeight.w100,
                  decoration: TextDecoration.none,
                  fontSize: 80,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
