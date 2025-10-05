//
//  StateBootCamp.swift
//  BootCamp_SwiftUI
//
//  Created by Koushik Reddy Kambham on 10/5/25.
//

import SwiftUI

struct StateBootCamp: View {
    
    @State var backgroundColor: Color = .teal
    @State var count: Int = 0
    @State var title = "initial"
    
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                Text(title)
                    .font(.title)
                Text("Count \(count)")
                    .font(.headline)
                
                HStack {
                    Button("button 1") {
                        title = "button 1 pressed"
                        backgroundColor = .white
                        count += 1
                    }
                    .foregroundColor(.black)
                    
                    Button("button 2") {
                        title = "button 2 pressed"
                        backgroundColor = .gray
                        count -= 1
                    }
                }
            }
        }
    }
}

#Preview {
    StateBootCamp()
}
