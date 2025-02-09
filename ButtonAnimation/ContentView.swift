//
//  ContentView.swift
//  ButtonAnimation
//
//  Created by swiftandcurious on 1/26/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isPressed = false
    
    var body: some View {
        Image(systemName: isPressed ? "checkmark.circle" : "circle")
            .resizable()
            .frame(width: 50, height: 50)
            .foregroundStyle(isPressed ? .green : .gray)
            .contentTransition(.symbolEffect)
            .onTapGesture {
                withAnimation {
                    isPressed.toggle()
                }
            }
    }
}

#Preview {
    ContentView()
}
