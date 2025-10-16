//
//  Counter.swift
//  BootCamp_SwiftUI
//
//  Created by Koushik Reddy Kambham on 10/14/25.
//

import SwiftUI

struct CounterView: View {
    @State private var count: Int = 0

    var body: some View {
        VStack {
            Text("Current Count: \(count)")
                .font(.largeTitle)
                .padding()

            HStack {
                Button("Decrement") {
                    count -= 1
                }
                .padding()

                Button("Increment") {
                    count += 1
                }
                .padding()
            }
        }
    }
}

#Preview{
    CounterView()
}
