//
//  AnimationTimingBootCamp.swift
//  BootCamp_SwiftUI
//
//  Created by Koushik Reddy Kambham on 10/6/25.
//

import SwiftUI

struct AnimationTimingBootCamp : View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        
        VStack {
            Button("click me") {
                
                        isAnimated.toggle()

            }
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 300 : 50, height: 100)
                .animation(.spring(response: 0.5, dampingFraction: 0.2))
   
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimated ? 300 : 50, height: 100)
//                .animation(Animation.linear)
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimated ? 300 : 50, height: 100)
//                .animation(Animation.easeIn(duration: 10))
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimated ? 300 : 50, height: 100)
//                .animation(Animation.easeInOut)
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimated ? 300 : 50, height: 100)
//                .animation(Animation.easeOut)
        }
    }
}

#Preview {
    AnimationTimingBootCamp()
}
