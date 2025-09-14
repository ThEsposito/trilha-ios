import Foundation

class Animal {
    let nome: String
    let idade: Int

    init(nome: String, idade:Int){
        self.nome = nome
        self.idade = idade
    }

    func dormir() {
        print("O \(self.nome) está dormindo")
    }

    public func emitirSom(){
        print("O \(nome) está dormindo")
    }

    // Overloading/Sobrescrita. Métodos com o mesmo nome que se diferenciam pela quantidade de parâmetros.
    public func emitirSom(nome:String){
        print("O \(nome) está dormindo")
    }
}
