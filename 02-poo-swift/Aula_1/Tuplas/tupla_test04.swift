let pessoa = (
    nome: "Ana", idade: 30, ativo: true,
    nome2: "Bruno", idade2: 25, ativo2: false
)

switch pessoa {
    case (let n, let i, true, let n2, let i2, false) where i >= 30:
        print("\(n) é adulta com pelo menos 30 anos e ativa"
    default:
        break
}

// Detalhe: tá uma porra isso aqui. Primeiro, estamos apenas filtranto por i e não por i2.
// Podemos ter mais eficiencia, mas trabalhar com tuplas em determinados conceitos é horrível, já
// que elas têm um escopo muito específico.