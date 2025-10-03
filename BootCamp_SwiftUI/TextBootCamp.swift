//
//  TextBootCamp.swift
//  BootCamp_SwiftUI
//
//  Created by Koushik Reddy Kambham on 10/2/25.
//


import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, I am koushik!".capitalized)
//            .font(.body)
//            .fontWeight(.semibold)
//            .bold()
//            .underline()
//            .underline(tr ue, color: Color.red)
//            .italic()
//            .strikethrough(true, color: Color.green)
//            .font(.system(si ze: 24, weight: .semibold, design: .serif))
        //line spaceing
//            .baselineOffset(-50.0)
        // letter spacing
//            .kerning(10)
            .multilineTextAlignment(.leading)
            .foregroundColor(.red)
            .frame(width: 200, height: 100, alignment: .leading)
            .minimumScaleFactor(0.1)
    }
}

#Preview {
    TextBootcamp()
}
