//
//  LazyVGridPractice.swift
//  SwiftUI_Oct15
//
//  Created by Koushik Reddy Kambham on 10/16/25.
//

import SwiftUI

struct LazyVGridPractice : View {
    
    let items = Array(1...20)
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible(), spacing: 100, alignment: nil ),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, alignment: .center , spacing: 20, pinnedViews: [], content: {
                ForEach(items, id: \.self) { item in
                    Text("Item \(item)")
                        .padding()
                        .background(Color.gray.opacity(0.3))
                        .cornerRadius(10)
                }
            })
            
//            LazyVGrid(columns: columns, spacing: 20) {
//                ForEach(items, id: \.self) { item in
//                    Text("Item \(item)")
//                        .padding()
//                        .background(Color.gray.opacity(0.3))
//                        .cornerRadius(10)
//                }
//            }
        }
    }
}

#Preview {
    LazyVGridPractice()
}
