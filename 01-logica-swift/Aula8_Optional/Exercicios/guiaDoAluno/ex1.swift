import Foundation
var vetor: [Int] = []

for i in 0...9 {
    var valorValido = false
    while(!valorValido) {
        print("Digite o número \(i):")
        let x = readLine()
            if let x = x {
                if let x = Int(x) {
                    valorValido = true // Não-inteiros não atrapalharão a contagem
                    if x<=0 {
                        vetor.append(1)
                    } else {
                        vetor.append(x)
                    }
                } else { 
                    print("Valor não inteiro.")
                    continue 
                }
            } else { 
                print("Valor Nil") // Com a entrada sendo nil, não é mais possível ler mais nenhum dado!
                print("Não é mais possível ler nada.")
                exit(-1) // Entradas nulas (ctrl + d) são interpretadas como eof.
        }
    }
}

// Printar o vetor
for i in 0...9 {
    print("X[\(i)] = \(vetor[i])")
}