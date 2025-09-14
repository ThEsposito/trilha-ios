//
//  main.swift
//  Foundation_TheoEsposito
//
//  Created by Aluno Mack on 04/07/25.
//

import Foundation

func isPrimo(num: Int) -> Bool{
    if (num==1){ return false }
    var cont = 2
    while cont <= Int(sqrt(Double(num))) {
        if num % cont == 0 {return false}
        cont+=1
    }
    
    return true
}

print("Digite o numero")
guard let valor = readLine() else {
    print("Nil")
    exit(1)
}

guard let valor = Int(valor) else {
    print("Inconversível para inteiro")
    exit(2)
}

for i in 1...10 {
    let resultado = valor*i
    print("\(valor) x \(i) = \(resultado), primo: \(isPrimo(num: resultado))")
}
// Na verdade, nenhum desses números (além do primeiro) vai ser ímpar, já que são
// múltiplos de 7. Mas vou deixar por conta da lógica

