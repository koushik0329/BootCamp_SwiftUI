//
//  BackgroundOverlayBootCamp.swift
//  BootCamp_SwiftUI
//
//  Created by Koushik Reddy Kambham on 10/2/25.
//

import SwiftUI

struct BackgroundOverlayBootCamp: View {
    var body: some View {
        Circle()
            .fill(Color.pink)
            .frame(width: 200, height: 200)
            .overlay(
                Text("1" )
                    .font(.largeTitle)
                    .foregroundStyle(.white)
            )
            .background(Color.blue)
        
    }
}

#Preview {
    BackgroundOverlayBootCamp()
}

