var generosMusicais: Set<String> = ["Rock","Pop","Jazz", "Rock"]

// Removeu a duplicata
print(generosMusicais)

print(generosMusicais.contains("Jazz"))

// Inserção e remoção
generosMusicais.insert("Samba")
generosMusicais.remove("Pop")
print(generosMusicais)

let meusGeneros: Set = ["Rock", "Samba", "MPB"]
let seusGeneros: Set = ["Pop", "Samba", "Eletrônica"]

// Operações matemáticas com conjuntos: 
let uniao = meusGeneros.union(seusGeneros)
let intersecao = meusGeneros.intersection(seusGeneros)

print(uniao)
print(intersecao)