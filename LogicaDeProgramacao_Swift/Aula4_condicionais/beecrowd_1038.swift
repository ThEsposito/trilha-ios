import Foundation

let codigo = Int(readLine()!)!
let qtde = Double(readLine()!)!

switch codigo {
    case 1:
        print("Total: R$\(4.0 * qtde)")
    case 2:
        print("Total: R$\(4.5 * qtde)")
    case 3:
        print("Total: R$\(5.0 * qtde)")
    case 4:
        print("Total: R$\(2.0 * qtde)")
    case 5:
        print("Total: R$\(1.5 * qtde)")
    default:
        print("Código inválido!")
}