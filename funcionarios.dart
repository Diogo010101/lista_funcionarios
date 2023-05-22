import 'dart:io';

void main() {
  List<dynamic> funcionarios = [];
  int escolha = 0;
  while (escolha != 4) {
    print("Cadastro e pesquida de funcionários\n");
    print("Digite a opção desejada:\n"
        "1 - Cadastrar Funcionário\n"
        "2 - Listar Funcionários\n"
        "3 - Deletar Funcionários\n"
        "4 - Sair");
    String? inputEscolha = stdin.readLineSync();
    int escolha = int.parse(inputEscolha!);
    if (escolha == 1) {
      print(
          "------------------- CADASTRO DE FUNCIONÁRIOS -----------------------\N");
      String opcao = "S";

      do {
        print("Digite o nome do funcionário");
        String? inputNome = stdin.readLineSync();
        String nome = inputNome.toString().toUpperCase();

        print("Qual a idade do Funcionário?");
        String? inputIdade = stdin.readLineSync();
        int idade = int.parse(inputIdade!);

        print("Digite o cargo do funcionário");
        String? inputCargo = stdin.readLineSync();
        String cargo = inputCargo.toString().toUpperCase();

        print("Digite o salário mensal do funcionário:");
        String? inputSalario = stdin.readLineSync();
        double salario = double.parse(inputSalario!);



        funcionarios.add(funcCadastrarFuncionario(nome: nome, idade: idade, cargo: cargo, salario: salario));
        print(funcionarios);


        print("Deseja continuar adicionando? ");
        String? inputOpcao = stdin.readLineSync();
        String resposta = inputOpcao.toString();
        if(resposta == "S"){
          opcao = "S";
          opcao = opcao.toUpperCase();
        }else{opcao = "N";
        opcao = opcao.toUpperCase();}


      }while(opcao != "N");

    }else if(escolha == 2){
      int tamanho = funcionarios.length;
      for(int i = 0; i < tamanho; i++){
        print("Nome: ${funcionarios[i][0][0]}");
        print("Idade: ${funcionarios[i][0][1]}");
        print("Cargo: ${funcionarios[i][0][2]}");
        print("Salário: ${funcionarios[i][0][3]}\n");
      }print("Fim da Lista\n");
    }else if(escolha == 3){
      print("Digite o nome do funcionário que deseja deletar da lista:");
      String? inputNome = stdin.readLineSync();
      String nomeDeletar = inputNome.toString();
      nomeDeletar = nomeDeletar.toUpperCase();
      funcionarios.remove(nomeDeletar);
      print("Funcionario: $nomeDeletar, removido com sucesso");

    }
  }print("ENCERRANDO O SISTEMA");
}


//Função para criar uma lista Dinâmica.
List funcCadastrarFuncionario({
  required String nome,
  required int idade,
  required String cargo,
  required double salario,
}) {
  List<dynamic> funcionario = [
    [nome, idade, cargo, salario]
  ];
  return funcionario;
}

