import Foundation

let pi = 3.14159

let raio = Double(readLine()!)!

let vol = pow(raio,3) * pi * 4.0/3.0 // O double ali é pra não transformar 4/3 em inteiro

print(String(format: "VOLUME = %.3f", vol))