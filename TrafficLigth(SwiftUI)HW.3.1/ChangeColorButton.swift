//
//  ChangeColorButton.swift
//  TrafficLigth(SwiftUI)HW.3.1
//
//  Created by Sergey Yurtaev on 27.06.2022.
//

import SwiftUI

struct ChangeColorButton: View {
    var title: String
    var action: () -> Void
    
    var body: some View {
        
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
        }
        .padding()
        .frame(width: 200, height: 60)
        .background(Color(.blue))
        .cornerRadius(15)
        .overlay( //скругленный прямоугольник
            RoundedRectangle(cornerRadius: 10, style: .continuous)
                .stroke(Color.white, lineWidth: 5) // прострочка
        )
    }
}

struct ChangeColorButton_Previews: PreviewProvider {
    static var previews: some View {
        ChangeColorButton(title: "START", action: {})
    }
}
