class Aluno{
  int ra = 0; 
  String nome = "";
  //construtor
  Aluno(this.nome, this.ra);

  //getters e setters
  int get getRa => this.ra;

  set setRa(int ra) => this.ra = ra;

  get getNome => this.nome;

  set setNome( nome) => this.nome = nome;

}