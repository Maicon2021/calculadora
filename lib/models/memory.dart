class Memory {
  String _value = '0';

  void applyCommand(String command) {
    // função aplicar verificar e aplicar comandos
    if (command == 'AC') {
      _allClear(); // seta 0 se pressionado AC
    } else {
      _value += command; // valor sendo alterado
    }
  }

  _allClear() {
    // função zara valor
    _value = '0';
  }

  String get value {
    return _value; // esse valor sempre tendo um valor novo
  }
}
