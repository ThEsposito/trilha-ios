let pessoa = (nome: "Ana", idade: 30, ativo: true)

// acesso por índice
print(pessoa.0)

// acesso por nome
print(pessoa.nome)

print(pessoa.1)

// destructuring
let (nome, idade, _) = pessoa
print(nome, idade) // "Ana 30"
