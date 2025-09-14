protocol VendavelOnline {
    var preco: Double {get}
    func adicionarAoCarrinho()  
}

protocol Enviavel {
    var pesoEmGramas: Int {get}
    func calcularCustoEnvio() -> Double
}

class LivroFisico: VendavelOnline, Enviavel {
    private var titulo: String
    private var autor: String
    internal var preco: Double 
    internal var pesoEmGramas: Int

    init(titulo: String, autor: String, preco: Double, pesoEmGramas: Int){
        self.titulo = titulo
        self.autor = autor
        self.preco = preco
        self.pesoEmGramas = pesoEmGramas
    }

    func adicionarAoCarrinho() {
        print("O livro '\(titulo)' foi adicionado ao carrinho.")
    }

    func calcularCustoEnvio() -> Double {
        return 2.5 * Double(pesoEmGramas) / 100
    }
}

struct CursoOnline: VendavelOnline {
    private let nome: String
    private let instrutor: String
    internal var preco: Double

    func adicionarAoCarrinho() {
        print("Inscrição para o curso \(nome) realizada com sucesso!")
    }
}