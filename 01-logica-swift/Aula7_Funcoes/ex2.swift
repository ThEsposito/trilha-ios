func media(a:Double, b:Double) -> Double{
    return (a+b)/2
}

print("Digite a primeira nota: ")
let n1 = Double(readLine()!)!

print("Digite a segunda nota: ")
let n2 = Double(readLine()!)!

print("A média é: \(media(a:n1, b:n2))")