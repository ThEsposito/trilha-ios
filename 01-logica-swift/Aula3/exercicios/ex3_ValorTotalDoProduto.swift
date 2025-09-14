import Foundation

print("Digite o nome do produto: ", terminator:"")
let nome = readLine()!

print("Digite o valor do produto unitário: ", terminator:"")
let valor = Double(readLine()!)!

print("Digite a quantidade de compras deste produto: ",terminator:"")
let qtde = Int(readLine()!)!

let total = valor*Double(qtde)
print("Valor total de \(nome) = R% \(total)")
// Usa-se esse String porque ele na verdade é uma função! Suportando os parâmetros que você especifica ali 