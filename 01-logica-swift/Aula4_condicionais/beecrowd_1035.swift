let a = Int(readLine()!)!
let b = Int(readLine()!)!
let c = Int(readLine()!)!
let d = Int(readLine()!)!

if b>c && d>a && (c+d) > (b+a) && c>0 && d>0 && (a%2)==0 {
    print("Valores aceitos")
} else {
    print("Valores não aceitos")
}