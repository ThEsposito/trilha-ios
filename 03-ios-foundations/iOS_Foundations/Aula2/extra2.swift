//
//  extra2.swift
//  Foundation_Aula2_Theo
//
//  Created by Aluno Mack on 07/07/25.
//

import Foundation

func isPrimo(_ num: Int) -> Bool{
    if (num==1) {
        return false
    }
    var cont = 2
    while cont <= Int(sqrt(Double(num))) {
        if num % cont == 0 {return false}
        cont+=1
    }
    return true
}

func geraPrimo(qtde: Int) {
    var qtde = qtde - 1 // Já que o 2 já está incluído direto
    var i = 3
    
    print(2, terminator: " ")
    
    while qtde>0 { // Maior igual ?
        if isPrimo(i) {
            print(i, terminator: " ")
            qtde -= 1
        }
        i += 2
    }
    print("\nAcabou")
}
