class Carro {
    private var marca: String
    private var modelo: String
    private let senha: String

    public init(marca: String, modelo: String, senha: String){
        self.marca = marca
        self.modelo = modelo
        self.senha = senha
    }

    func acelerar() {
        print("O \(modelo) da \(marca) está acelerando")
    }

    func frear(){
        print("O \(modelo) está freando")
    }

    func getMarca() -> String{
        return marca
    }

    private func setMarca(marca: String) {
        self.marca = marca
    }

    public func alterarMarca(senha: String, novaMarca: String){
        if(self.senha == senha){
            self.setMarca(marca: novaMarca)
        }
    }

    public func getModelo() -> String {
        return self.modelo
    }
}