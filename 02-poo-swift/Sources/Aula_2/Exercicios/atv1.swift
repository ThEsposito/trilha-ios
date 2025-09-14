struct Livro {
    let titulo: String
    let autor: String
    let anoPublicacao: Int

    init(titulo: String, autor: String, anoPublicacao: Int){
        self.titulo = titulo
        self.autor = autor
        self.anoPublicacao = anoPublicacao
    }

    func exibirDetalhes() {
        print("Titulo: \(titulo)")
        print("Autor: \(autor)")
        print("Ano de Publicacao: \(anoPublicacao)")
    }
}

let livro1: Livro = Livro(titulo: "A", autor: "A", anoPublicacao: 1)    
let livro2: Livro = Livro(titulo: "B", autor: "B", anoPublicacao: 2)

livro1.exibirDetalhes()
livro2.exibirDetalhes()