class Pedido {
    let id: Int
    let descricao: String
    var status: StatusPedido

    init(id: Int, descricao: String, status: StatusPedido) {
        self.id = id
        self.descricao = descricao
        self.status = status
    }

    func atualizarStatus(para: StatusPedido){
        self.status = para
    }
}

enum StatusPedido {
    case recebido
    case processando
    case enviando
    case entregue
}

let pedido = Pedido(id: 1, descricao: "camisa", status: StatusPedido.recebido)
pedido.atualizarStatus(para: StatusPedido.entregue)
print(pedido.status)