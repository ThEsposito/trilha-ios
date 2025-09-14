//
//  ContentView.swift
//  aula5
//
//  Created by Aluno Mack on 06/06/25.
//

import SwiftUI

struct ContentView: View {
    @State var isOn: Bool = false //para uma variavel que muda o visual usar @State
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .frame(width: 200, height: 200)
                .foregroundStyle(.purple)
            
            Button {
                isOn.toggle()
            } label: {
                VStack{
                    if isOn {
                        Image(systemName: "heart.fill")
                            .foregroundStyle(.yellow)
                            .font(.system(size: 100))
                        
                        Text("True")
                            .foregroundStyle(.yellow)
                            .bold()
                            .font(.system(size: 35))
                    } else {
                        Image(systemName: "heart")
                            .foregroundStyle(.yellow)
                            .font(.system(size: 100))
                        
                        Text("False")
                            .foregroundStyle(.yellow)
                            .bold()
                            .font(.system(size: 35))
                    }
                }
            }
            
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
