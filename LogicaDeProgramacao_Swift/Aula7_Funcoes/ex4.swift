func calculaIMC(peso: Double, altura: Double) -> [Double] {
    let imc = peso / (altura * altura)
    var classificacao = -1.0 // Na hora do retorno tava dando como var não declada
    if imc<18.5{
        classificacao = 1
    } else if(imc<25.0){
        classificacao = 2
    } else if(imc<30.0){
        classificacao = 3
    } else {
        classificacao = 4
    }

    return [imc, classificacao]
}
let result = calculaIMC(peso: 65.0, altura: 1.8)
let imc = result[0]
var classificacao = ""
switch result[1]{
    case 1:
        classificacao = "Abaixo do Peso"
    case 2:
        classificacao = "Peso Normal"
    case 3:
        classificacao = "Sobrepeso"
    case 4:
        classificacao = "Obesidade"
    default:
        classificacao = "Erro"
}

print("Imc: \(imc)")
print("Classificação: \(classificacao)")