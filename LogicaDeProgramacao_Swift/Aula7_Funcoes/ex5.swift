func calculaPreco(preco: Double, desconto: Int, imposto: Int) -> Double {
    // Os parâmetros são inicializados automaticamente como let. Então se precisar usar
    // de novo, deve-se reinicializá-lo
    var desconto = Double(desconto) / 100.0
    desconto = 1.0 - desconto

    var imposto = Double(imposto) / 100.0
    imposto = 1.0 + imposto

    return (preco * desconto * imposto)
}

print(calculaPreco(preco: 100.0, desconto: 10, imposto: 20))