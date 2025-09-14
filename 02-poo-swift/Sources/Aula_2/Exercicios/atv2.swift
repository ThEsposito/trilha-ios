enum EstacaoDoAno {
    case Primavera
    case Verao
    case Outono
    case Inverno
}

class Calendario {
    static func getMensagem(para: EstacaoDoAno) -> String {
        switch para {
        case EstacaoDoAno.Primavera:
            return "Eh primavera!"
        case EstacaoDoAno.Verao:
            return "Eh verao!"
        case EstacaoDoAno.Outono:
            return "Eh outono!"
        case EstacaoDoAno.Inverno:
            return "Eh inverno!"
        }
    }
}

print(Calendario.getMensagem(para: EstacaoDoAno.Primavera))
print(Calendario.getMensagem(para: EstacaoDoAno.Outono))
print(Calendario.getMensagem(para: EstacaoDoAno.Verao))
print(Calendario.getMensagem(para: EstacaoDoAno.Inverno))