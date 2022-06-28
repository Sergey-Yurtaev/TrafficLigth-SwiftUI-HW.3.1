//
//  ContentView.swift
//  TrafficLigth(SwiftUI)HW.3.1
//
//  Created by Sergey Yurtaev on 26.06.2022.
//

import SwiftUI

enum CurrentLigth {
    case red, yellow, green
}

struct ContentView: View {
    @State private var currentColor = CurrentLigth.red
    @State private var textButton = "START"
    @State private var textLabel = "\(CurrentLigth.red)"
    
//    @State private var redColor = ColorCircle(color: .red, opacity: 0.2) // first version
//    @State private var yellowColor = ColorCircle(color: .yellow, opacity: 0.2)
//    @State private var greenColor = ColorCircle(color: .green, opacity: 0.2)
        
    var body: some View {
        ZStack {
            Color(.black)
                .edgesIgnoringSafeArea(.all) //заливка от края до края 
            
            VStack {
                VStack(spacing: 20) {
                    ColorCircle(color: .red, opacity: currentColor == .red ? 1 : 0.2)
                    ColorCircle(color: .yellow, opacity: currentColor == .yellow ? 1 : 0.2)
                    ColorCircle(color: .green, opacity: currentColor == .green ? 1 : 0.2)
                }
                Text(textLabel)
                    .foregroundColor(.white)
                    .padding()
                Spacer()
                ChangeColorButton(title: textButton, action: nextColor)
            }
            .padding()
        }
    }
    
    private func nextColor() {
        textButton = "NEXT"
        switch currentColor {
        case .red: currentColor = .yellow; textLabel = "\(self.currentColor)"
        case .yellow: currentColor = .green; textLabel = "\(self.currentColor)"
        case .green: currentColor = .red; textLabel = "\(self.currentColor)"
        }
    }
}

//extension ContentView { // first version
//    private func changeTextButton() {
//        textButton = "NEXT"
//        switch currentColor {
//        case .red:
//            greenColor = ColorCircle(color: .green, opacity: 0.2)
//            redColor = ColorCircle(color: .red, opacity: 1)
//            textLabel = "\(self.currentColor)"
//            currentColor = .yellow
//        case .yellow:
//            redColor = ColorCircle(color: .red, opacity: 0.2)
//            yellowColor = ColorCircle(color: .yellow, opacity: 1)
//            textLabel = "\(self.currentColor)"
//            currentColor = .green
//        case .green:
//            yellowColor = ColorCircle(color: .yellow, opacity: 0.2)
//            greenColor = ColorCircle(color: .green, opacity: 1)
//            textLabel = "\(self.currentColor)"
//            currentColor = .red
//        }
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
