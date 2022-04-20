import 'package:flutter/material.dart';

import 'button.dart';

class ButtonRow extends StatelessWidget {
  final List<Button> buttons;

  ButtonRow(this.buttons);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: buttons.fold(<Widget>[], (list, b) {
          // após buttons, adicionando . fold(<>[], (list,b)) cria-se uma função para adicionar um espaço entre as colunas.
          list.isEmpty
              ? list.add(b)
              : list.addAll([
                  SizedBox(width: 1),
                  b,
                ]); // verifica se não é uma lista vazia, não sendo add o text, adiciona texto + espaço de 1
          return list;
        }),
      ),
    );
  }
}
