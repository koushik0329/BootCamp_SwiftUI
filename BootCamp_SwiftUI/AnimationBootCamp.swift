//
//  AnimationBootCamp.swift
//  BootCamp_SwiftUI
//
//  Created by Koushik Reddy Kambham on 10/6/25.
//

import SwiftUI

struct AnimationBootCamp : View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        
        VStack {
            Button("click me") {
                withAnimation(Animation
                    .default
                    .repeatCount(5, autoreverses: true))
//                    .repeatForever())
//                    .delay(5))
                    {
                        isAnimated.toggle()
                    }
            }
            
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.green : Color.yellow)
                .frame(width: isAnimated ? 100 : 300, height: isAnimated ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0 ))
                .offset( y: isAnimated ? 20 : 0)
//                .animation()
            
                    }
    }
}

#Preview {
    AnimationBootCamp()
}
