  import 'dart:io';
void main() {
  double somaNotas = 0;
  for (int i = 1; i <= 4; i++) {
    print("Digite a nota $i (de 0 a 10): ");
    double nota = double.parse(stdin.readLineSync()!);
    while (nota < 0 || nota > 10) {
      print("Nota inválida! Digite uma nota entre 0 e 10: ");
      nota = double.parse(stdin.readLineSync()!);
    }
    somaNotas += nota;
  }
  double media = somaNotas / 4;
  print("Média: $media");
  if (media < 5.0) {
    print("Classificação: Reprovado");
  } else if (media >= 7.0) {
    print("Classificação: Aprovado");
  } else {
    print("Classificação: Recuperação");
  }
}
