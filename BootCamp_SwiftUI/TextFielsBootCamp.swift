//
//  TextFielsBootCamp.swift
//  BootCamp_SwiftUI
//
//  Created by Koushik Reddy Kambham on 10/10/25.
//

import SwiftUI

struct TextFielsBootCamp: View {
    
    @State private var username: String = ""
    
    var body: some View {
        VStack {
            TextField("Enter Username", text: $username)
            .padding()
                        .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.blue, lineWidth: 2)
                                    )
            Text("Username: \(username)")
        }
    }
}

#Preview {
    TextFielsBootCamp()
}
