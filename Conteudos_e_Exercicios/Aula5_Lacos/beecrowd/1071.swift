var x = Int(readLine()!)!
var y = Int(readLine()!)!

if x>y {    // Troca
    let temp = x
    x = y
    y = temp
}

if x%2 == 0 { // Sera que funfa com negativos? Usar o abs?
    x+=1
} else {
    x+=2
}

var i = x
var soma = 0

while(i<y){
    soma+=i
    i+=2    // Tem como configurar o passo no for?
}

print("Soma: \(soma)")