var listaTelefonica = ["Maria":11998773452,
"João": 1598760990,
"Lucas": 1143528899]

if let numero = listaTelefonica["Maria"] {
    print("Telefone da Maria: \(numero)")
}
// O default é pra, caso não tiver nada, atribuir outro valor pro valor

print("Telefone do Lucas: \(listaTelefonica["Lucas", default: 0])")