// Exercício 1003
print("Digite n1")
let n1_string = Int(readLine()!)!
print("Digite n2")
let n2_string = Int(readLine()!)!

print("SOMA = \(n1_string+n2_string)")

// Exercício 1005

import Foundation // Lib pra usar o "format:" 

print("Digite os 2 valores: ")
let a = Double(readLine()!)!
let b = Double(readLine()!)!

let peso1 = 3.5
let peso2 = 7.5

let media = (a*peso1 + b*peso2)/(peso1+peso2)
let textoFormatado = String(format: "Media = %.5f", media)
print(textoFormatado)


// Exercício 1014

let distancia = Int(readLine()!)!
let combustivelGasto = Double(readLine()!)!

let result = Double(distancia)/combustivelGasto /* Por alguma razão que só Deus sabe, não precisa
usar a exclamação aqui
*/

print("\(result) km/l")

// Exercício 1016

/* Em uma hora (60 minutos) o carro Y consegue se distanciar 30 quilômetros do carro X, ou seja,
consegue se afastar um quilômetro a cada 2 minutos.*/

let distancia = Double(readLine()!)!
let tempo = distancia*2

print(tempo)


// Exercício 1018  (sem usar vetores ou listas)
var valor = Int(readLine()!)!

let qtde100 = Int(valor/100) // Não precisava usar o casting pra Int, já que estamos fazendo 
valor = valor%100            // operações com dois ints. A nova var respeita o tipo das outras
                             // que dão origem a ela. Não dá pra fazer operações de um tipo pro
                             //outro

let qtde50 = Int(valor/50)
valor = valor%50

let qtde20 = Int(valor/20)
valor = valor%20

let qtde10 = Int(valor/10)
valor = valor%10

let qtde5 = Int(valor/5)
valor %= 5

let qtde2 = Int(valor/2)
valor %= 2

print("\(qtde100) notas de 100\n\(qtde50) notas de 50")
print("\(qtde20) notas de 20\n\(qtde10) notas de 10")
print("\(qtde5) notas de 5\n\(qtde2) notas de 2")

