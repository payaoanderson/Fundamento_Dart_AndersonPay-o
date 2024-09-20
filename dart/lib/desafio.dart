void main() {
  print('--------------------------------- DESAFIO FUNDAMENTOS EM DART ---------------------------------');
  
  List<String> pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|40|desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Rahman|55|jornalista|SP',
  ];

  // 1º Imprima os dados dos pacientes na tela
  print('\n// 1º - Pacientes');
  for (var paciente in pacientes) {
    print(paciente);
  }

  // 2º Imprima os pacientes acima de 20 anos
  print('\n// 2º - Pacientes acima de 20 anos');
  for (var paciente in pacientes) {
    var dados = paciente.split('|');
    var idade = int.parse(dados[1]);
    if (idade > 20) {
      print(paciente);
    }
  }

  // 3º Imprima a quantidade de pacientes por profissão
  print('\n// 3º - Quantidade de pacientes por profissão');
  Map<String, int> profissaoContagem = {};

  for (var paciente in pacientes) {
    var dados = paciente.split('|');
    var profissao = dados[2].toLowerCase();
    if (profissaoContagem.containsKey(profissao)) {
      profissaoContagem[profissao] = profissaoContagem[profissao]! + 1;
    } else {
      profissaoContagem[profissao] = 1;
    }
  }

  profissaoContagem.forEach((profissao, quantidade) {
    print('- Quantidade de ${profissao}(s): ${quantidade}');
  });

  // 4º Imprima os pacientes que moram em SP
  print('\n// 4º - Pacientes que moram em SP');
  for (var paciente in pacientes) {
    var dados = paciente.split('|');
    if (dados[3] == 'SP') {
      print('Nome: ${dados[0]}, Idade: ${dados[1]}, Profissão: ${dados[2]}');
    }
  }

  // 5º Exclua todos os estudantes e em seguida imprima os pacientes
  print('\n// 5º - Pacientes sem estudantes');
  pacientes.removeWhere((paciente) => paciente.split('|')[2].toLowerCase() == 'estudante');
  
  for (var paciente in pacientes) {
    print(paciente);
  }

  // 6º Inclua os pacientes abaixo nas primeiras posições
  print('\n// 6º - Inclusão de novos pacientes');
  List<String> novosPacientes = [
    'Manoel Silva|12|estagiário|MG',
    'Joaquim Rahman|18|estagiário|SP',
    'Fernando Verne|35|estagiário|MG'
  ];

  pacientes.insertAll(0, novosPacientes);

  for (var paciente in pacientes) {
    print(paciente);
  }
}
