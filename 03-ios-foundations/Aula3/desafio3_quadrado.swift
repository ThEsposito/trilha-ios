//
//  desafio3_quadrado.swift
//  Foundations_Theo_03
//
//  Created by Aluno Mack on 08/07/25.
//

import Foundation

class Quadrado {
    let lado: Double

    init(lado: Double){
        self.lado = lado
    }
    
    func getArea() -> Double {
        return lado*lado
    }
}
