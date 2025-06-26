import Foundation

let secreto = Int.random(in:1...10) // Se for gerar mais de um aleatório precisa-se setar uma seed,
var chute = secreto - 1             // como acontece em C. Senão o msm num será gerado sempre

while chute != secreto {
    print("Tente adivinhar meu número secreto: ")
    chute = Int(readLine()!)!
}
print("Parabéns!! Você é um gênio!")

print("Toma aqui sua tabuada: ")
for i in 1...10 {
    print("\(secreto) x \(i) = \(secreto*i)")  // Pode ser o chute, vai dar na mesma
}