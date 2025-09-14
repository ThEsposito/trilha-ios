let car: Carro2 = Carro2(marca: "Fiat", ano: 1996, numeroDeRodas: 40)
// car.apresentar()

var moto = Moto(marca: "Honda", ano: 2015, cilindradas: 5)
var array: [Veiculo] = [moto, car, Moto(marca: "Yamaha", ano: 2025, cilindradas: 600)] 

for item in array {
    print(item.detalhes())
}