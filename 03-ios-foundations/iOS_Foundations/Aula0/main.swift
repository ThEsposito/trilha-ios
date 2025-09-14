//
//  main.swift
//  Foundation_Theo_Aula0
//
//  Created by Aluno Mack on 03/07/25.
//

import Foundation

func isPar(n: Int) -> Bool {
    return n%2 == 0
}

func fatorial(n: Int) -> Int {
    var produto: Int = 1
    for i in 1...n {
        produto*=i
    }
    
    return produto
}

func fatRecursivo(n: Int) -> Int {
    if n==1 {
        return 1
    }
    return n * fatRecursivo(n: n-1)
}

func numPrimos(n: Int) -> [Int] { 
    
}



print("Digite seu num: ", terminator:"")

guard let num = readLine() else {
    print("Valor nil")
    exit(1)
}
guard let num = Int(num) else {
    print("O valor nao pode ser convertido para inteiro")
    exit(2)
}

print(fatRecursivo(n: num))
