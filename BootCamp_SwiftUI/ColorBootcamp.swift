//
//  ColorBootcamp.swift
//  BootCamp_SwiftUI
//
//  Created by Koushik Reddy Kambham on 10/2/25.
//

import SwiftUI

struct ColorBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                //Color.primary
                //Color(UIColor.secondarySystemBackground)
                Color.pink
            )
            .frame(width: 200, height: 400)
            //.shadow(radius: 10)
            .shadow(color: Color.pink.opacity(0.9), radius: 10, x: -20, y: -20)
    } 
}

#Preview {
    ColorBootcamp()
}
