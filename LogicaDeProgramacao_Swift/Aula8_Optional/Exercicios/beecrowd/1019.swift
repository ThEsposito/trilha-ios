/*
Leia um valor inteiro, que é o tempo de duração em segundos de um determinado evento em uma fábrica, e informe-o7
expresso no formato horas:minutos:segundos.

*/

guard let seg = readLine() else {
    print("Valor Nil")
    fatalError()
}

guard var seg = Int(seg) else {
    print("Não-inteiro")
    fatalError()
}

var minutos = Int(seg/60)

var horas = Int(minutos / 60)
minutos %= 60

seg %= 60

print("\(horas):\(minutos):\(seg)")

// Fazer com if let seria meio ruim, porque teríamos colocar o bloco todo dentro de dos if's.
// Fora que não conseguiríamos usar os valores depois:
/*
var segTotal = readLine()
if let segTotal = segTotal {
    if let segTotal = Int(segTotal) {
        print(segTotal)
        // Meio ruim porque tem q colocar tudo dentro dos if's (questão de organização só)
    } else { print("Não inteiro") }
} else { print("Nil, papae") }
*/