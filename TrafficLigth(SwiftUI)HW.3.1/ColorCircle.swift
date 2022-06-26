//
//  ColorCircle.swift
//  TrafficLigth(SwiftUI)HW.3.1
//
//  Created by Sergey Yurtaev on 26.06.2022.
//

import SwiftUI

struct ColorCircle: View {
    let color: UIColor
    let opacity: Double 
    
    var body: some View {
        Color(color)
            .frame(width: 100, height: 100)
            .clipShape(Circle())
            .opacity(opacity)
            .overlay(Circle().stroke(Color.gray, lineWidth: 5))
            .shadow(radius: 10)
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .green, opacity: 0.2)
    }
}
