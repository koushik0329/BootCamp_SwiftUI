//
//  GridBootCamp.swift
//  BootCamp_SwiftUI
//
//  Created by Koushik Reddy Kambham on 10/3/25.
//

import SwiftUI

struct GridBootCamp: View {
    
    let columns : [GridItem] = [
        GridItem(.fixed(50), spacing: nil, alignment: nil),
        GridItem(.fixed(50), spacing: nil, alignment: nil),
        GridItem(.fixed(100), spacing: nil, alignment: nil)
        ,GridItem(.fixed(50), spacing: nil, alignment: nil)
        ,GridItem(.fixed(50), spacing: nil, alignment: nil)
    ]
    
    var body: some View {
        LazyVGrid(columns : columns) {
            ForEach(0..<50) { index in
                Rectangle()
                    .frame(height: 50)
            }
        }
    }
}

#Preview {
    GridBootCamp()
}
