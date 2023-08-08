class Produto {
  String nome = "";
  double preco = 0;
  int quantidade = 0;
  String tipo = "";

  //construtor
  Produto(
    this.nome,
    this.preco,
    this.quantidade,
    this.tipo,
  );

  //getters e setters
  get getNome => this.nome;

  set setNome(nome) => this.nome = nome;

  get getPreco => this.preco;

  set setPreco(preco) => this.preco = preco;

  get getQuantidade => this.quantidade;

  set setQuantidade(quantidade) => this.quantidade = quantidade;

  get getTipo => this.tipo;

  set setTipo(tipo) => this.tipo = tipo;
}
