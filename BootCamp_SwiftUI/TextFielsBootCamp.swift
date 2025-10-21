//
//  TextFielsBootCamp.swift
//  BootCamp_SwiftUI
//
//  Created by Koushik Reddy Kambham on 10/10/25.
//

import SwiftUI

struct TextFielsBootCamp: View {
    
    @State private var username: String = ""
    @State var isToggle : Bool = false
    
    var body: some View {
        VStack {
            TextField("Enter Username", text: $username)
            .padding()
                        .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.blue, lineWidth: 2)
                                    )
            Text("Username: \(username)")
            
            Toggle(isOn: $isToggle, label: {Text("leblw")})
                .toggleStyle(SwitchToggleStyle(tint: Color.purple))
            TextEditor(text: $username)
        }
        .padding()
        .background(Color.red.opacity(0.2))
        
       
            
    }
}

#Preview {
    TextFielsBootCamp()
}
