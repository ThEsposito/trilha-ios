//
//  extra1.swift
//  Foundation_Aula2_Theo
//
//  Created by Aluno Mack on 07/07/25.
//

import Foundation

func funcao(array: [Int], n: Int) {
    let divisor = 10*(n-1)
    for i in array {
        if i/divisor > 0 {
            print(i, terminator: " ")
        }
    }
    print()
}
