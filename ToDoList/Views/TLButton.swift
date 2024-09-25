//
//  TLButton.swift
//  ToDoList
//
//  Created by Alejandro  on 04/09/24.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(title)
                    .foregroundStyle(Color.white)
                    .bold()
            }
        }
    }
    
}

#Preview {
    TLButton(title: "title", background: .blue){
        // Action
    }
}
