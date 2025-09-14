//
//  main.swift
//  Foundations_Theo_03
//
//  Created by Aluno Mack on 08/07/25.
//

import Foundation

var quad: Quadrado = Quadrado(lado: 5)
print(quad.getArea())

var circ: Circulo = Circulo(raio: 5)
print(circ.getArea())
print(circ.getPerimetro())

var pir: Piramide = Piramide(ladoBase: 5, altura: 10)
print(pir.getVolume())
print(pir.getAreaSuperficial())
