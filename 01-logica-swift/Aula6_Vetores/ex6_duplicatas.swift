// Crie um programa que recebe um array e remove os números duplicados.

var arr = [1,1,2,2,3,4,5,5,5,6,7,8,8,9]

/*
var tam = arr.count

for i in 0..<tam{
    print(tam)
    for j in i+1..<tam{
        if (arr[i] == arr[j]) {
            arr.remove(at:j)
            tam-=1
        }
    }
}
print(arr)

/*
Esse jeito acima não funciona, já que os 3 pontinhos criam um vetor de 0 até o tamanho
Uma vez que o tamanho é alterado, a lista mencionada não se altera
Portanto, o índice acaba estourando

Talvez seria possível se criássemos outro vetor, contendo esses 3 pontinhos, e fôssemos removendo
o valor final, a cada vez que encontrássemos uma duplicata..
*/
*/

var tam = arr.count

var i = 0

while(i<tam-1){
    print(i)
    var j = i+1
    while(j<tam){
        if arr[j]==arr[i]{
            arr.remove(at:j)
            tam-=1
        }
        j+=1
    }
    i+=1
}

print(arr)