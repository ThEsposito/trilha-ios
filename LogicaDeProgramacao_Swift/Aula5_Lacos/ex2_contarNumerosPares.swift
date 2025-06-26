/*
print("Digite o nro o fim: ")
let fim = Int(readLine()!)!

var counter = 0

while (counter <= fim) {
    if (counter%2)==0 {
        print(counter)
    }
    counter+=1
}
*/

print("Digite o nro do fim: ")
let fim = Int(readLine()!)!

var i = 2
var cont = 0
while (i<=fim) { // Assim é melhor porque não fica verificando o módulo toda hora
    print(i)
    i+=2
    cont+=1
}
print("\(cont) números pares")

// Continue e break existem em swift