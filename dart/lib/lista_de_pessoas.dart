import 'dart:io';
void main() {
  List<Map<String, String>> listaPessoas = [];
  while (true) {
    print("Informe o nome e telefone separados por ';' ou digite 'sair' para finalizar: ");
    String entrada = stdin.readLineSync()!;
    if (entrada.toLowerCase() == 'sair') {
      break;
    }
    List<String> dados = entrada.split(';');
    if (dados.length != 2) {
      print("Formato inválido. Digite no formato: Nome;Telefone");
      continue;
    }
    String nome = dados[0].trim();
    String telefone = dados[1].trim();
    if (telefone.length < 15) {
      print("Telefone inválido (menos de 15 caracteres). Registro descartado.");
      continue;
    }
    listaPessoas.add({'nome': nome, 'telefone': telefone});
  }
  print("\nLista de pessoas válidas cadastradas:");
  for (var pessoa in listaPessoas) {
    print("Nome: ${pessoa['nome']}, Telefone: ${pessoa['telefone']}");
  }
}
