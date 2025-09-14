//
//  StackView3.swift
//  aula5
//
//  Created by Aluno Mack on 06/06/25.
//

import SwiftUI

struct StackView3: View {
    var body: some View {
        VStack(spacing: 20){
            Circle()
                .frame(width: 200, height: 200)
                .foregroundColor(.blue)
            
            Text("Sobre Personagem")
                .foregroundColor(.blue)
                .bold()
                .font(.system(size: 25))
            
            Text("Informacoes")
        }
        
        TabView {
            Tab("Home", systemImage: "heart") {
                StackView()
            }
            .badge(2)


            Tab("Counter", systemImage: "heart") {
                StackView2()
            }


            Tab("Profile", systemImage: "heart") {
                StackView3()
            }
            .badge("!")
        }
        
    }
}

#Preview {
    StackView3()
}
