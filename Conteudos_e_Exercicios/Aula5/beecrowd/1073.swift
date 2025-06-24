import Foundation

var n = Int(readLine()!)!

if n%2 == 1{
    n+=1
}

var i = 2

while i<=n {
    print("\(i)^2 = \(pow(Double(i),2))")
    i+=2
}