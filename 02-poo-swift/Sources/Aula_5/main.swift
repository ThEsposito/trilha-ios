// let carro = CarroDeEntrega(placa: "12345")
// carro.acelerar()
// print(carro.obterLocalizacao())

let livro = LivroFisico(titulo: "Diario de um banana", autor: "Esqueci", preco: 25.99, pesoEmGramas: 200)
let curso = CursoOnline(nome: "Java para burros", instrutor: "Nelio Alves", preco: 29.99)

livro.adicionarAoCarrinho()
curso.adicionarAoCarrinho()
print("Frete do livro: \(livro.calcularCustoEnvio())")