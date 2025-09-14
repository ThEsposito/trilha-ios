//
//  StackView.swift
//  aula5
//
//  Created by Aluno Mack on 06/06/25.
//

import SwiftUI

struct StackView: View {
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .frame(width: 200, height: 200)
                .foregroundStyle(.purple)
            
            HStack(spacing: 20){
                VStack(spacing: 10){
                    Rectangle()
                        .frame(width: 70, height: 70)
                        .foregroundStyle(.yellow)
                    
                    RoundedRectangle(cornerRadius: 50)
                        .frame(width: 70, height: 70)
                        .foregroundStyle(.green)
                }
                
                RoundedRectangle(cornerRadius: 50)
                    .frame(width: 60, height: 150)
                    .foregroundStyle(.pink)
                
            }
            
            }
            
            
        }
}

#Preview {
    StackView()
}
