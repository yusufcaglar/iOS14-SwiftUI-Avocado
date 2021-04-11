//
//  AvocadoView.swift
//  Avocado
//
//  Created by Yusuf Çağlar on 11.04.2021.
//

import SwiftUI

struct AvocadoView: View {
    //MARK: - Properties
    @State private var pulseAnimation: Bool = false
    
    //MARK: - Body
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Image("avocado")
                .resizable()
                .scaledToFit()
                .frame(width: 240, height: 240, alignment: .center)
                .shadow(color: Color("ColorBlackTransparentDark"), radius: 12, x: 0, y: 8)
                .scaleEffect(pulseAnimation ? 1 : 0.9)
                .opacity(pulseAnimation ? 1 : 0.9)
                .animation(Animation.easeInOut(duration: 0.5).repeatForever(autoreverses: true))
            
            VStack {
                Text("Avocado".uppercased())
                    .font(.system(size: 42, weight: .bold, design: .serif))
                    .foregroundColor(.white)
                    .padding()
                    .shadow(color: Color("ColorBlackTransparentDark"), radius: 4, x: 0, y: 4)
                
                Text("""
Creamy, green, and full of nutrients!
Avocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more!
""")
                    .lineLimit(nil)
                    .font(.system(.headline, design: .serif))
                    .foregroundColor(Color("ColorGreenLight"))
                    .multilineTextAlignment(.center)
                    .lineSpacing(8)
                    .frame(maxWidth: 640, minHeight: 120)
            }
            .padding()
            
            Spacer()
        }
        .background(
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
        )
        
        .edgesIgnoringSafeArea(.all)
        .onAppear(perform: {
            self.pulseAnimation.toggle()
        })
    }
}

//MARK: - Preview

struct AvocadoView_Previews: PreviewProvider {
    static var previews: some View {
        AvocadoView()
            .environment(\.colorScheme, .light)
    }
}
