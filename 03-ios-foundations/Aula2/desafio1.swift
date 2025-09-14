//
//  ex1.swift
//  Foundation_Theo02
//
//  Created by Aluno Mack on 07/07/25.
//

import Foundation

func fatorial(n: Int) -> Int {
    if n == 1 || n == 0 {
        return 1
    }
    return n * fatorial(n: n-1)
}
