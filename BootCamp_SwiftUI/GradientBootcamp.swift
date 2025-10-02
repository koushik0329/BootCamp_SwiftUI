//
//  GradientBootcamp.swift
//  BootCamp_SwiftUI
//
//  Created by Koushik Reddy Kambham on 10/2/25.
//

import SwiftUI

struct GradientBootcamp: View {
    var body: some View {
//        LinearGradient(gradient: Gradient(colors: [.blue, .white]),
//                                   startPoint: .topLeading,
//                                   endPoint: .bottomTrailing)
//                        .ignoresSafeArea()
        
        
        
        RadialGradient(
                            gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)), Color(#colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1))]),
                            center: .leading,
                            startRadius: 5,
                            endRadius: 400)
        
        
        
//                        AngularGradient(
//                            gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1))]),
//                            center: .topLeading,
//                            angle: .degrees(180 + 45))
    }
}

#Preview {
    GradientBootcamp()
}
