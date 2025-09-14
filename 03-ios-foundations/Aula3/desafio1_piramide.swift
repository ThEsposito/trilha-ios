//
//  desafio1_piramide.swift
//  Foundations_Theo_03
//
//  Created by Aluno Mack on 08/07/25.
//

import Foundation

class Piramide {
    let ladoBase: Double
    let altura: Double
    
    init(ladoBase: Double, altura: Double) {
        self.ladoBase = ladoBase
        self.altura = altura
    }
    
    func getVolume() -> Double {
        return ladoBase*ladoBase * altura / 3
    }
    
    func getAreaSuperficial() -> Double {
        let areaBase = ladoBase * ladoBase
        
        let apotema = sqrt(altura*altura + ladoBase * ladoBase / 4)
        let areaTriangulo = ladoBase * apotema / 2 // Area de cada face lateral da piramide
        
        return areaBase + 4 * areaTriangulo
    }
}
