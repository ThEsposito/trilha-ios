class CarroEsportivo: Carro {
    private var velocidadeMaxima: Double

    init(marca: String, modelo: String, senha: String, velocidadeMaxima: Double) {
        self.velocidadeMaxima = velocidadeMaxima // O swift encheu o saco quando coloquei essa lina embaixo
        super.init(marca: marca, modelo: modelo, senha: senha)
    }

    override func acelerar() {
        print("Ligando...")
        super.acelerar()
    }

    func acelerandoMaximo(){
        print("O carro esta acelerando a \(velocidadeMaxima)")
    }

    func acelerar(velocidade: Double){
        print("O \(super.getModelo()) está acelerando a \(velocidade)")
    }
}