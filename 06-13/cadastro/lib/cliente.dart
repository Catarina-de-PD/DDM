class Cliente {
  String nome = "";
  int idade = 0;
  String cpf = "";
  String email = "";

  //construtor
  Cliente(
    this.cpf,
    this.email,
    this.idade,
    this.nome,
  );

  //getters e setters
  String get getNome => this.nome;

  set setNome(String nome) => this.nome = nome;

  get getIdade => this.idade;

  set setIdade(idade) => this.idade = idade;

  get getCpf => this.cpf;

  set setCpf(cpf) => this.cpf = cpf;

  get getEmail => this.email;

  set setEmail(email) => this.email = email;
}
