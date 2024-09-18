import 'dart:io';

void main() {
  // Solicita ao usuário que insira um número
  print('Digite um número: ');
  String? input = stdin.readLineSync();

  // Verifica se a entrada não é nula e pode ser convertida para um número
  if (input != null) {
    int? number = int.tryParse(input);

    if (number != null) {
      // Verifica se o número é par ou ímpar
      if (number % 2 == 0) {
        print('$number é par.');
      } else {
        print('$number é ímpar.');
      }
    } else {
      print('Entrada inválida. Por favor, insira um número inteiro.');
    }
  } else {
    print('Entrada inválida.');
  }
}
