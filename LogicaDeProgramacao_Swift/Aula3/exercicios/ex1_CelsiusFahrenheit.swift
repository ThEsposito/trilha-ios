import Foundation

print("Insira a temperatura em Celsius: ", terminator: "") // O terminator com str vazia é pra n quebrar a linha (importar a lib)

let c = Double(readLine()!)!

let f = c*9/5 + 32

print(String(format:"%.2foC = %.2foF ", c, f))