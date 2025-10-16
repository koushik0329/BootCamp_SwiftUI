//
//  LazyHGridPractice.swift
//  SwiftUI_Oct15
//
//  Created by Koushik Reddy Kambham on 10/16/25.
//

import SwiftUI

struct LazyHGridPractice : View {
    
    let items = Array(1...20)
    
    let rows = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows : rows, spacing: 10) {
                ForEach(items, id: \.self) { item in
                    Text("Item \(item)")
                        .padding()
                        .background(Color.gray.opacity(0.3))
                        .cornerRadius(10)
                }
            }
        }
    }
}

#Preview {
    LazyHGridPractice()
}
