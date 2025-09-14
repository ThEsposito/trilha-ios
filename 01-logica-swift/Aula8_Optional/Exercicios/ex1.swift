// Verificação de Entrada Vazia: 

/*
Crie um programa que:
Leia uma entrada com readLine()
Guarde em uma variável opcional String?
Use if let para verificar se há valor
Imprima o conteúdo, se existir. Caso contrário, diga que está vazio
*/

var minhaStr: String? = readLine()
// N é necessário explicitar o ": String?" já que o swift faz isso implicitamente

if let minhaStr = minhaStr {
    if minhaStr != "\n" {
        print("Digitou enter sem digitar nada, hein.")
    } else {
        print("Valor lido: \(minhaStr)")
    }
        
} else {
    print("Entrada vazia")
}

/*
*VERSÃO USANDO GUARD LET*

import Foundation // Pra usar o exit
var minhaStr: String? = readLine()

guard let minhaStr = minhaStr else {
    print("Entrada vazia")
    exit(-1)
}

print("Valor lido: \(minhaStr)")
*/


// Isso daqui, em java, seria algo assim:
/*
String minhaStr = scanner.nextLine();
if (minhaStr!=null)
*/