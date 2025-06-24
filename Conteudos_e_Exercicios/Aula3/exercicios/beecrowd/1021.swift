import Foundation

let valorTotal = Double(readLine()!)!

let fracDouble = valorTotal*100 - floor(valorTotal)*100

let valorDouble = floor(valorTotal) // Decimal

var valor = Int(valorDouble)
var frac = Int(fracDouble)

let qtde100 = valor/100

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
