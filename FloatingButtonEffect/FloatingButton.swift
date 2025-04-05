//
//  ContentView.swift
//  FloatingButtonEffect
//
//  Created by Alemayehu Hailye on 05.04.25.
//

import SwiftUI

struct FloatingButton: View {
    @State private var floating = false
    @State private var rotation: Double = 0
    
    let texts = ["NEXT", "STOP"]
    
    var body: some View {
        ZStack {
            Text("Travel Now")
                .font(.custom("Babe", size: 60))
                .position(x: 200, y: 100)
                .foregroundStyle(.white)
                .shadow(color: .black, radius: 4)
            
            ForEach(0..<texts.count, id: \.self) { i in
                Text(texts[i])
                    .font(.system(size: 20, weight: .bold))
                    .foregroundStyle(.white)
                    .rotationEffect(.degrees(-rotation))
                    .offset(x: 60 * cos(.pi * 2 * Double(i) / Double(texts.count)),
                            y: 60 * sin(.pi * 2 * Double(i) / Double(texts.count)))
            }
            .rotationEffect(.degrees(rotation))
            .animation(.linear(duration: 3).repeatForever(autoreverses: false), value: rotation)
            
            Button(action: {}) {
                Image(systemName: "plus")
                    .font(.largeTitle)
                    .foregroundStyle(.yellow)
                    .padding()
                    .background(Circle().fill(Color.blue))
                    .shadow(radius: floating ? 30 : 5)
                    .scaleEffect(floating ? 1.1 : 1.0)
            }
            .offset(y: floating ? -10 : 10)
            .animation(.easeInOut(duration: 0.6).repeatForever(autoreverses: true), value: floating)
            .onAppear {
                floating.toggle()
                rotation = 360
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("travelD4")
            .resizable()
            .scaledToFill()
            .ignoresSafeArea()
            .opacity(0.8))
        
    }
}

#Preview {
    FloatingButton()
}
