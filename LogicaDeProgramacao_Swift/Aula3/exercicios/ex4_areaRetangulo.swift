import Foundation

print("Digite a base: ")
let base = Double(readLine()!)!

print("Digite a altura: ")
let altura = Double(readLine()!)!

var media = base*altura
var media = floor(media*100)/100 // O floor arredonda pro proximo inteiro abaixo

print("Area = \(media)")