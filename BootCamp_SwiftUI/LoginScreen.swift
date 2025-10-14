//
//  LoginScreen.swift
//  BootCamp_SwiftUI
//
//  Created by Koushik Reddy Kambham on 10/3/25.
//

import SwiftUI

struct LoginScreen: View {
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        VStack(spacing: 30){
            Text("Login Screen")
                .font(.largeTitle)
            
            ReusableTextField(title: "Enter Your Email Address", text: $email)
                
            
            ReusableTextField(title: "Enter Your Password", text: $password)
            
            ReusableButton(title: "Login") {}

        }
            
    }
}

struct ReusableTextField: View {
    let title: String
    @Binding var text: String
    var body: some View {
        TextField(title, text: $text)
            .padding(30)
            .frame(width: 300, height: 50)
            .shadow(radius: 10)
            .background(Color.gray.opacity(0.2))
            .cornerRadius(10)
    }
}

struct ReusableButton: View {
    let title: String
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
                .frame(width: 300, height: 50)
                .background(Color.black)
                .cornerRadius(10)
        }
    }
}

#Preview {
    LoginScreen()
}
