//
//  ColorBootcamp.swift
//  BootCamp_SwiftUI
//
//  Created by Koushik Reddy Kambham on 10/2/25.
//

import SwiftUI

struct ColorBootcamp: View {
    
    @State var backgroundColor: Color = .green
    
    var body: some View {
        
        ZStack {
            
            backgroundColor
                .ignoresSafeArea()
            
            VStack {
                
            ColorPicker("Select a color", selection: $backgroundColor, supportsOpacity: true)
                    .padding()
 
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(
                        //Color.primary
                        //Color(#colorLiteral(red: 0, green: 0.3285208941, blue: 0.5748849511, alpha: 1))
                        //Color(UIColor.secondarySystemBackground)
                        Color("CustomColor")
                    )
                    .frame(width: 300, height: 200)
                //.shadow(radius: 10)
                    .shadow(color: Color("CustomColor").opacity(0.3), radius: 10, x: -20, y: -20)
            }
        }
    }
}

#Preview {
    ColorBootcamp()
}
