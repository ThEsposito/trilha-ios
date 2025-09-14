//
//  StackView2.swift
//  aula5
//
//  Created by Aluno Mack on 06/06/25.
//

import SwiftUI

struct StackView2: View {
    @State var num: Int = 0
    
    var body: some View {
        VStack(spacing: 30) {
            Text("\(num)")
                .foregroundStyle(.purple)
                .bold()
                .font(.system(size: 35))
            
            Button {
                num += 1
            } label: {
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 170, height: 70)
                        .foregroundStyle(.purple)
                    
                    Text("Increment")
                        .foregroundStyle(.white)
                        .bold()
                        .font(.system(size: 25))
                }
            }
        }
        .padding()
    }
}

#Preview {
    StackView2()
}
