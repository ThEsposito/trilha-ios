class Cachorro {
  var nome: String
  var idade: Int
  var corPelo: String
  
  init(nome: String, idade: Int, corPelo: String){
    self.nome = nome
    self.idade = idade
    self.corPelo = corPelo
  }
  
  func latir(){
    print("Ai calica")
  }
}

var dogao: Cachorro = Cachorro(nome: nome, idade: idade, corPelo:corDoPelo)
print("\(dogao.nome)")