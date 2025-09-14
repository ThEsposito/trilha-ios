import Foundation

func isInteiro(n: String?) -> Int{ // Retorna -1 se houver erro. 
    guard let n = n else {
        return -1
    }
    
    guard let n = Int(n) else {
       return -1
    }
    return n
}

var codigoOpt = readLine()
var qtdeOpt = readLine()

var codigo = isInteiro(n:codigoOpt)
var qtde = Double(isInteiro(n: qtdeOpt))

if(codigo == -1 || qtde == -1) { 
    print("Deu pau")
    exit(-1)
} else {
    
}

var preco_total = qtde

switch codigo {
    case 1:
        preco_total *= 4.0
    case 2:
        preco_total *= 4.5
    case 3:
        preco_total *= 5.0
    case 4:
        preco_total *= 2.0
    case 5:
        preco_total *= 1.5
    default:
        print("Código não identificado")
        exit(-2)
}
print(preco_total)