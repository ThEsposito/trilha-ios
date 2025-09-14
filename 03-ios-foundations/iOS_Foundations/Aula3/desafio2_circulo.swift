//
//  desafio2_circulo.swift
//  Foundations_Theo_03
//
//  Created by Aluno Mack on 08/07/25.
//

import Foundation

class Circulo {
    let raio: Double
    
    init(raio: Double){
        self.raio = raio
    }

    func getPerimetro() -> Double {
        return 2 * Double.pi * raio
    }
    
    func getArea() -> Double {
        return Double.pi * raio * raio
    }
    
}
