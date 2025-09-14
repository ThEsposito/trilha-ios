import Foundation

var dias = Int(readLine()!)!

let anos = dias/365
dias %= 365

let meses = dias/30
dias %= 30

print(anos)
print(meses)
print(dias)