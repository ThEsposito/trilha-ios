//
//  ContentView.swift
//  Foundations-Theo-05
//
//  Created by Aluno Mack on 11/07/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var texto: String = ""
    
    var body: some View {
        VStack {
            Button {
                
            } label: {
                VStack{
                    Image(systemName: "iphone.gen3").imageScale(.large)
                    Text("iPhone de Juliana")
                    Text("Este iPhone 11")
                }
            }
            
            HStack {
                Text("Tópicos de suporte")
                    .bold() // Aumentar tamanho do texto?
                Spacer()
            }
            TextField("", text: $texto)
            List {
                HStack {
                    Image(systemName: "")
                    Text("Reparos e danos físicos")
                }
                HStack{
                    Image(systemName: "")
                    Text("Desempenho do dispositivo")
                    
                }
                HStack{
                    Image(systemName: "")
                    Text("Assinaturas e compras")
                }
                HStack{
                    Image(systemName: "")
                    Text("Compras na Apple Store")
                }
                HStack{
                    Image(systemName: "lock.fill")
                    Text("Senhas e seguranca")
                }
                HStack{
                    Image(systemName: "")
                    Text("Atualizacão, backup e restauracão")
                }
                HStack{
                    Image(systemName: "")
                    Text("Mais")
                }
            }
        
        }
        .padding()
        
        // TabBar: HStack com icones
    }
}

#Preview {
    ContentView()
}
