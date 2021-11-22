//
//  ContentView.swift
//  GlassMorphism
//
//  Created by Thongchai Subsaidee on 23/11/2564 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home: View {
    var body: some View {
        ZStack {
            
            LinearGradient(
                colors: [Color.blue, Color.blue.opacity(0.8)],
                startPoint: .top,
                endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            // Gloss Background
            GeometryReader { proxy in
                
                let size = proxy.size
                
                // Slighlty darkening
                Color.black
                    .opacity(0.7)
                    .blur(radius: 200)
                    .ignoresSafeArea()
                
                Circle()
                    .fill(Color.pink)
                    .padding(50)
                    .blur(radius: 120)
                
                    // Moving top...
                    .offset(x: -size.width / 1.8 , y: 0)
                
                Circle()
                    .fill(Color.white)
                    .padding(50)
                    .blur(radius: 150)
                
                    // Movice top...
                    .offset(x: size.width / 1.8, y: -size.height / 2)
                
                Circle()
                    .fill(Color.white)
                    .padding(50)
                    .blur(radius: 90)
                
                    // Moving
                    .offset(x: size.width / 1.8, y: size.height / 2)
                
                
                Circle()
                    .fill(Color.pink)
                    .padding(100)
                    .blur(radius: 110)
                
                    // Moving
                    .offset(x: size.width / 1.8, y: size.height / 2)
                
                
            }
        }
    }
}
