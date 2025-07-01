import Foundation // Para utilizar o exit()

func listarTarefas(tarefas: [String]){
    for (i, tarefa) in tarefas.enumerated(){
        print("\(i+1). \(tarefa)")
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

func mudarPrioridade(indiceInicial: Int, indiceFinal: Int, tarefas: [String]) -> [String] {
    let temp = tarefas[indiceInicial]
    
    var tarefas = tarefas
    tarefas.remove(at: indiceInicial) 
    tarefas.insert(temp, at: indiceFinal)

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
var tarefas: [String] = []

while true {
    print("""
=== Lista de Tarefas ===
  1 - Listar tarefas
  2 - Adicionar tarefa
  3 - Remover tarefa
  4 - Editar tarefa
  5 - Mudar prioridade de uma tarefa
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
    
   print() // Questão de estética

    switch opcao {
        case 1: // Listar Tarefas
            if tarefas.count == 0 {
                print("Sua lista de tarefas ainda está vazia!")
            } else {
                print("=== Suas tarefas ===")
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
        
        case 3: // Remover tarefa especificada pela prioridade/id (indice+1)
            if tarefas.count == 0 {
                print("Sua lista de tarefas ainda está vazia!\n")
                continue
            }

            print("Qual tarefa você gostaria de remover? Digite o número dela:", terminator: " ")
            guard let id = readLine() else{
                print("Entrada vazia! Encerrando programa!\n")
                exit(1)
            }
            
            guard let id = Int(id) else {
                print("O valor digitado não pode ser convertido para inteiro!\n")
                continue
            }

            if id < 1 || id > tarefas.count {
                print("O id digitado não existe na sua lista!")
            } else {
                tarefas = removerTarefa(indice: id-1, tarefas: tarefas)
            }

        case 4: // Editar tarefa. Pede o índice+1 (a prioridade) e o novo texto
            if tarefas.count == 0 {
                print("Sua lista de tarefas ainda está vazia!\n")
                continue
            }

            print("Qual tarefa você gostaria de editar? Digite o número dela:", terminator: " ")
            guard let id = readLine() else{
                print("Entrada vazia! Encerrando programa!\n")
                exit(1)
            }
            guard let id = Int(id) else {
                print("O valor digitado não pode ser convertido para inteiro!\n")
                continue
            }

            if id < 1 || id > tarefas.count {
                print("O id digitado não existe na sua lista!\n")
                continue
            }
            
            print("Digite o novo texto para a tarefa \(id):", terminator:" ")

            guard let novo_texto = readLine() else {
                print("Entrada vazia! Encerrando programa!\n")
                exit(1)
            }

            if contemApenas(caractere: " ", texto: novo_texto) || novo_texto == "\n"{
                print("Sua entrada está em branco!! Tente novamente.\n")
            } else {
                tarefas = editarTarefa(indice: id-1, novo_texto: novo_texto, tarefas: tarefas)
            }

        case 5: // Alterar a prioridade
            print("Digite a prioridade atual da tarefa:", terminator: " ")
            guard let prioridadeAtual = readLine() else {
                print("Entrada vazia! Encerrando programa!\n")
                exit(1)
            }

            guard let prioridadeAtual = Int(prioridadeAtual) else {
                print("O valor digitado não pode ser convertido para inteiro!\n")
                continue
            }

            if prioridadeAtual <= 0 || prioridadeAtual > tarefas.count {
                print("O id digitado não existe na sua lista!\n")
                continue
            }

            print("Digite a nova prioridade para a tarefa \(prioridadeAtual):", terminator:" ")
            guard let prioridadeNova = readLine() else {
                print("Entrada vazia! Encerrando programa!\n")
                exit(1)
            }

            guard let prioridadeNova = Int(prioridadeNova) else {
                print("O valor digitado não pode ser convertido para inteiro!\n")
                continue
            }

            if prioridadeNova <= 0 || prioridadeNova > tarefas.count {
                print("O id digitado não existe na sua lista!\n")
                continue
            }

            if (prioridadeAtual == prioridadeNova) {
                print("A prioridade nova é igual à antiga!\n")
                continue
            }

            tarefas = mudarPrioridade(indiceInicial: prioridadeAtual-1, indiceFinal: prioridadeNova-1,
            tarefas: tarefas)

        case 0:
            print("Programa Encerrado!\n")
            exit(0)

        default:
            print("Não há nenhuma opção associada ao número digitado\n")
    }
    print("\n") // Só por estética mesmo
}
