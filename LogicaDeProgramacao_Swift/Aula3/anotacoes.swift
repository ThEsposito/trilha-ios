// Bibliotecas (lib): import
// Lib Foundations: 

// Função abs (se é negativo transforma em positivo)

var a = -3

// sqrt e .squareRoot 

// pow(a,2)  potência

// Raízes diferentes de 2: 
// a~1/3  ==  3√ a

import Foundation
var a = 64.0

var raizCubo = cbrt(a)
print("Raiz cubica de \(a) = \(raizCubo)")

raizCubo = ow(a,1/3)
print("raiz cubica de \(a) = \(raizCubo)") // Falta de precisão, por conta do double

// Floor e ceil (arredondar): floor pra baixo e ceil pra cima

// Sen, cos e tan. Precisa transformar o parâmetro em double.