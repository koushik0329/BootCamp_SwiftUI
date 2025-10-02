//
//  ShapeBootCamp.swift
//  BootCamp_SwiftUI
//
//  Created by Koushik Reddy Kambham on 10/2/25.
//

import SwiftUI

struct ShapeBootcamp: View {
    var body: some View {
        Circle()
            .stroke()
        //Ellipse()
        //Capsule(style: .circular)
        Rectangle()
//        RoundedRectangle(cornerRadius: 9)
            .fill(Color.blue)
//            .foregroundColor(.pink)
//            .stroke()
//            .stroke(Color.red)
//            .stroke(Color.yellow, lineWidth: 20)
//            .stroke(Color.pink, s tyle: StrokeStyle(lineWidth: 30, lineCap: .round, dash: [30]))
            //.trim(from: 0.0, to: 1.0)
//            .stroke(Color.yellow, lineWidth: 20)
            .strokeBorder(Color.red)
            .frame(width: 300, height: 200)
    }
}

#Preview {
    ShapeBootcamp()
}
