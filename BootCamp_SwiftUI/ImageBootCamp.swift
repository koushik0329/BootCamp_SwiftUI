//
//  ImageBootCamp.swift
//  BootCamp_SwiftUI
//
//  Created by Koushik Reddy Kambham on 10/2/25.
//

import SwiftUI

struct ImageBootCamp: View {
    var body: some View {
        Image("swift")
//            .renderingMode(.template)
            .resizable()
            .frame(width: 200, height: 200)
            .clipped()
            .cornerRadius(150)
//            .clipShape(
//                Circle()
//            )
    }
}

#Preview {
    ImageBootCamp()
}
