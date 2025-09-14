class Veiculo {
    fileprivate var marca: String
    fileprivate var ano: Int

    init(marca: String, ano: Int) {
        self.marca = marca
        self.ano = ano
    }

    func apresentar() {
        print("Marca: \(self.marca)")
        print("Ano: \(ano)")
    }

    func detalhes() -> String{
        return "Este é um veículo"
    }
}

class Carro2: Veiculo {
    var numeroDeRodas: Int
    init(marca: String, ano: Int, numeroDeRodas: Int) {
        self.numeroDeRodas = numeroDeRodas
        super.init(marca: marca, ano: ano)
    }

    override func detalhes() -> String {
        return "Este é um carro \(marca) de \(numeroDeRodas) rodas"
    }
}

class Moto: Veiculo {
    var cilindradas: Int

    init(marca: String, ano: Int, cilindradas: Int) {
        self.cilindradas = cilindradas
        super.init(marca: marca, ano: ano)
    }

    override func detalhes() -> String {
        return "Esta é uma moto \(marca) de \(cilindradas) cilindradass"
    }
}