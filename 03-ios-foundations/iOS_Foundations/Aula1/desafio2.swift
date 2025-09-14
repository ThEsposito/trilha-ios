//
//  desafio2.swift
//  Foundation_TheoEsposito
//
//  Created by Aluno Mack on 04/07/25.
//

import Foundation

 func isPar(num: Int) -> Bool {
     return (num%2 == 0)
 }

 func fat(num: Int) -> Int {
     var result: Int = num
     for i in 1..<num {
         result *= i
     }
     return result
 }

 guard let valor = readLine() else {
     print("Nil")
     exit(1)
 }

 guard let valor = Int(valor) else {
     print("Inconversível para inteiro")
     exit(2)
 }

 let fatorial = fat(num: valor)
 print(fatorial)

 // Na verdade, todo fatorial (com excecao de fat(1)) vai multiplicar por 2, então
 // nunca vai ser ímpar.

 if isPar(num: fatorial) {
     print("É par! ")
 } else {
     print("É ímpar! ")
 }

