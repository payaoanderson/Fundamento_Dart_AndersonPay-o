import 'dart:io';

void main() {
  // Solicita ao usuário que insira um número
  stdout.write('Digite um número para gerar a tabuada (deve ser um número inteiro): ');
  String? input = stdin.readLineSync();

  // Verifica se a entrada não é nula e pode ser convertida para um número
  if (input != null) {
    int? number = int.tryParse(input);

    if (number != null) {
      // Exibe a tabuada do número inserido
      print('Tabuada do $number:');
      for (int i = 1; i <= 10; i++) {
        print('$number x $i = ${number * i}');
      }

      // Exibe uma mensagem de parabéns após a tabuada
      print('Parabéns! Você gerou a tabuada do $number com sucesso.');
    } else {
      print('Erro: A entrada fornecida não é um número inteiro válido. Por favor, insira um número inteiro.');
    }
  } else {
    print('Erro: Nenhuma entrada fornecida. Por favor, digite um número e tente novamente.');
  }
}

