/*
Crie um programa que:
Leia uma entrada com readLine()
Guarde em uma variável opcional String?
Use if let para verificar se há valor
Imprima o conteúdo, se existir. Caso contrário, diga que está vazio
*/

print("Digite seu número inteiro abaixo. Pode tentar quebrar o programa.")
var meuInt: String? = readLine()

if let meuInt = meuInt {
    if let meuInt = Int(meuInt) {
        print("Seu inteiro: \(meuInt)")
    } else {
        print("Não digitou um inteiro")
    }
} else {
    print("Entrada vazia")
}