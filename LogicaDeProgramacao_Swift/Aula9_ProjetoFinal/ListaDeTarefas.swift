import Foundation // Para utilizar o exit()

func listarTarefas(tarefas: [String]){
    for (i, tarefa) in tarefas.enumerated(){
        print("\(i+1). \(tarefa);")
    }
}

func adicionarTarefa(tarefa: String, tarefas: [String]) -> [String]{
    var tarefas = tarefas
    tarefas.append(tarefa)
    return tarefas
}

func removerTarefa(indice: Int, tarefas: [String]) -> [String]{
    var tarefas = tarefas
    tarefas.remove(at: indice)
    return tarefas
}

func editarTarefa(indice: Int, novo_texto: String, tarefas: [String]) -> [String]{
    var tarefas = tarefas
    tarefas[indice] = novo_texto
    return tarefas
}

func contemApenas(caractere: String, texto: String) -> Bool { // Usada pra verificar se o usuário digitou uma tarefa em branco
    for texto_char in texto {
        if String(texto_char) != caractere {
            return false
        }
    }
    return true
}

// MAIN
let opcao = -1
var tarefas: [String] = []

while opcao != 0 {
    print("""
=== Lista de Tarefas ===
  1 - Listar tarefas
  2 - Adicionar tarefa
  3 - Remover tarefa
  4 - Editar tarefa
  0 - Sair
Escolha uma opção:
""", terminator:" ")
    guard let opcao = readLine() else{
        print("Entrada vazia! Encerrando programa!\n")
        exit(1)
    }
    guard let opcao = Int(opcao) else {
        print("O valor digitado não pode ser convertido para inteiro!\n")
        continue
    }

    switch opcao {
        case 1: // Listar Tarefas
            if tarefas.count == 0 {
                print("Sua lista de tarefas ainda está vazia!")
            } else {
                print("\n=== Suas tarefas ===")
                listarTarefas(tarefas: tarefas)
            }

        case 2: // Adicionar nova tarefa
            print("Digite a tarefa à ser adicionada:", terminator: " ")
            guard let nova_tarefa = readLine() else {
                print("Entrada vazia! Encerrando programa!\n")
                exit(1)
            }

            if contemApenas(caractere: " ", texto: nova_tarefa) || nova_tarefa == "\n" {
                print("Sua entrada está em branco!! Tente novamente.")
            } else {
                tarefas = adicionarTarefa(tarefa: nova_tarefa, tarefas: tarefas)
            }
        
        case 3: // Remover tarefa (pedir o índice +1)
            print("Qual tarefa você gostaria de remover? Digite o número dela:", terminator: " ")
            guard let id = readLine() else{
                print("Entrada vazia! Encerrando programa!\n")
                exit(1)
            }
            
            guard let id = Int(id) else {
                print("O valor digitado não pode ser convertido para inteiro!\n")
                continue
            }

            if id < 1 || id > tarefas.count+1 {
                print("O id digitado não existe na sua lista!")
            } else {
                tarefas = removerTarefa(indice: id-1, tarefas: tarefas)
            }

        case 4: // Editar tarefa. Pedir o índice +1 e o novo texto
            print("Qual tarefa você gostaria de editar? Digite o número dela:", terminator: " ")
            guard let id = readLine() else{
                print("Entrada vazia! Encerrando programa!\n")
                exit(1)
            }
            guard let id = Int(id) else {
                print("O valor digitado não pode ser convertido para inteiro!\n")
                continue
            }

            if id < 1 || id > tarefas.count+1 {
                print("O id digitado não existe na sua lista!")
                continue
            }
            
            print("Digite o novo texto para a tarefa \(id):", terminator:" ")

            guard let novo_texto = readLine() else {
                print("Entrada vazia! Encerrando programa!\n")
                exit(1)
            }

            if contemApenas(caractere: " ", texto: novo_texto) || novo_texto == "\n"{
                print("Sua entrada está em branco!! Tente novamente.")
            } else {
                tarefas = editarTarefa(indice: id-1, novo_texto: novo_texto, tarefas: tarefas)
            }

        case 0:
            print("\nPrograma Encerrado!\n")

        default:
            print("Não há nenhuma opção associada ao número digitado\n")
    }
    print("\n") // Só por estética mesmo
}
