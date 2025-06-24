// AULA 2

/*
Declaramos variáveis com as keywords var e let:
var: valores que podem mudar
let: valores fixos (constantes). Opcional, mais é mais seguro e legível (boas práticas).

O tipo da variável é inferido automaticamente (embora seja fortemente tipada)
*/

let idade = 25
let nome = "Theo"
let altura = 1.81   // float/double
let ehHomem = true

// Tipo Optional: valor presente ou nil (veremos mais pra frente)

// Dá pra declarar o tipo de maneira explícita:
let nome2: String = "Theo"

// Entrada:
/* readLine()! - Vamos usar a exclamação por enquanto. Questão pequena de segurança. Tem a ver com
o tipo optional
*/

// Saída:
print("Olá, \(nome)!") // Saída formatada
print("Olá " + nome + "!") // Concatenando

// Usamos a exclamação pra dois casos por enquanto: TypeCasting e entradas
print("Qual a sua idade?")
var texto = readLine()!
var idade2 = Int(texto)!    // Repare que usamos Int como função 
print("Você tem \(idade) anos.")