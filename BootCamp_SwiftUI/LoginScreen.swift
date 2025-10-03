//
//  LoginScreen.swift
//  BootCamp_SwiftUI
//
//  Created by Koushik Reddy Kambham on 10/3/25.
//

import SwiftUI

struct LoginScreen: View {
    var body: some View {
        VStack(spacing: 50){
            Text("Login Screen")
                .font(.largeTitle)
            
            TextField("Email", text: .constant(""))
                .padding(30)
                .frame(width: 300, height: 50)
                .shadow(radius: 10)
                .background(Color.gray.opacity(0.2))
                
            
            TextField("Password", text: .constant(""))
                .padding(30)
                .frame(width: 300, height: 50)
                
                .background(Color.gray.opacity(0.2))
            
            Button {
                
            } label: {
                Text("Login")
                    .font(.largeTitle)
                    .frame(width: 300, height: 50)
                    .background(Color.black)
            }

        }
            
    }
}

#Preview {
    LoginScreen()
}
