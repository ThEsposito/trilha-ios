import Foundation

let peso1 = 3.0 // Tive que colocar o ".0" pq a linguagem nao realiza operacoes entre tipos diferentes
let peso2 = 2.0

print("Digite n1", terminator: "")
let n1 = Double(readLine()!)!

print("Digite n2", terminator: "")
let n2 = Double(readLine()!)!

let media = (n1*peso1 + n2*peso2)/(peso1+peso2)

print(String(format:"M= %.2f", media))