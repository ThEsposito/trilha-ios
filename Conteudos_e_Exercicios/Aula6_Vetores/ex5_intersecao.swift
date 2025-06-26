// Crie um programa que recebe duas arrays e imprime a intersecção entre elas. 

let arr1 = [10, 20, 5, 15, 30]
let arr2 = [1, 2, 5, 15, 3]

for i in arr1{
    if arr2.contains(i) {
        print(i, terminator:" ")
    }    
}