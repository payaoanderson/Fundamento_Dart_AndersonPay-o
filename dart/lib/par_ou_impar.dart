import 'dart:io';
void main() {
  print('Digite um número: ');
  String? input = stdin.readLineSync();
  if (input != null) {
    int? number = int.tryParse(input);
    if (number != null) {
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
