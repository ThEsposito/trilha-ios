class Veiculo {
    var velocidade: Double = 0.0

    func acelerar() {
        velocidade += 10
        print("Veiculo acelerado para \(velocidade) km/h")
    }
}

class CarroDeEntrega: Veiculo, Rastreavel {
    let placa: String
    init(placa: String){
        self.placa = placa
    }

    override func acelerar(){
        self.velocidade+=5
    }

    func obterLocalizacao() -> String {
        return "Localização: Brasil - Placa: \(self.placa)"
    }
}

protocol Rastreavel {
    func obterLocalizacao() -> String
}
// Prog orientada a protocolos: não utilizar classes, pensando em eficiência.
// O impacto na implementação do cóigo é questão de arquitetura/planejamento
// Se dá por conta daquela questão structs serem do tipo valor (portanto, ocupando menos
// espaço em heap e aumentando a eficiência)