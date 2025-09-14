class Pessoa {
    var nome: String

    init(nome: String){
        self.nome = nome
    }
}

class Estudante: Pessoa {
    var idDeEstudante: String

    init(nome: String, idDeEstudante: String) {
        self.idDeEstudante = idDeEstudante

        // Chamando o construtor da classe pai
        super.init(nome: nome)
    }
}