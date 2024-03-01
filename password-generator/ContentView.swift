//
//  ContentView.swift
//  password-generator
//
//  Created by Vitor Boff on 01/03/24.
//

import SwiftUI

struct ContentView: View {
    @State private var speed = 10.0
    
    private func didTapGeneratePassword() {
        print(Int(speed))
    }
    
    var body: some View {
        ZStack{
            Color(red: 243/255, green: 243/255, blue: 255/255).ignoresSafeArea()

            VStack(spacing: 20) {
                Image("logo", bundle: .main)
                    .imageScale(.large)
                    .padding(.bottom, 60)
                
                Text("\(Int(speed)) caracteres")
                    .font(.title)
                    .foregroundStyle(Color.black)
                
                Slider(
                    value: $speed,
                    in: 6...18
                )
                .padding(16)
                .background(.white)
                .clipShape(.buttonBorder)
                
                Button(action: didTapGeneratePassword, label: {
                    Text("Gerar senha")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 12)
                })
                .background(.blue)
                .clipShape(RoundedRectangle(cornerRadius: 8))
            }
            .padding(.horizontal, 20)
        }
    }
}

#Preview {
    ContentView()
}
