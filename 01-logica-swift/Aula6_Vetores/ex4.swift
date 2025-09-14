// Crie um programa que imprime os valores do array que são divisiveis tanto por 3 quanto por 5.

let array = [1,2,3,4,5,6,7,8,9,10]

for i in array{
    if (i%3 == 0) || (i%5 == 0) {
        print(i, terminator: " ")
    }
}