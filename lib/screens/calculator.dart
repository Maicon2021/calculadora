import 'package:calculator/componets/keyboard.dart';
import 'package:calculator/models/memory.dart';
import 'package:flutter/material.dart';
import '../componets/display.dart';

class Calculator extends StatefulWidget {
  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final Memory memory = Memory();

  _onPressed(String command) {
    setState(() {
      // seta o estado aplicar comando digitados
      memory.applyCommand(command);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(children: <Widget>[
        Display(memory.value), // recebe o valor digitado
        Keyboard(_onPressed),
      ]),
    );
  }
}
