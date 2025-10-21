//
//  StepperBootCamp.swift
//  BootCamp_SwiftUI
//
//  Created by Koushik Reddy Kambham on 10/21/25.
//

import SwiftUI

struct StepperBootCamp : View {
    
    @State var stepperVal : Int = 5
    @State var widthIncrement : CGFloat = 10
    
    var body: some View {
        Stepper("steeper \(stepperVal)", value: $stepperVal)
        
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 100 + widthIncrement, height: 75)
        
        Stepper("rect steeper") {
            withAnimation(.easeInOut) {
                widthIncrement += 20
            }
        } onDecrement: {
            widthIncrement -= 20
        }

    }
    
    
}

#Preview {
    StepperBootCamp()
}
