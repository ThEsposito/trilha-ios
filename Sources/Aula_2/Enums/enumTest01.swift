struct CarroModel{
    let modelo: Modelo
    let marca: String
}

enum Modelo {
    case Focus
    case Fiesta
    case Fusion
}

let carro = CarroModel(modelo: .Focus, marca: "Ford")
print(carro.modelo)