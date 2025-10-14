//
//  SignUpScreen.swift
//  BootCamp_SwiftUI
//
//  Created by Koushik Reddy Kambham on 10/8/25.
//

import SwiftUI

struct SignUpScreen: View {
    
    @State private var email = ""
    @State private var name = ""
    @State private var password = ""
    @State private var verifyPassword = ""
    
    var body: some View {
        VStack(spacing: 30){
            Text("Signup Screen")
                .font(.largeTitle)
            
            ReusableTextField(title: "Enter Your Email Adress", text: $email)
            ReusableTextField(title: "Enter Your Name", text: $name)
            
            ReusableTextField(title: "Enter Your Password", text: $password)
            
            ReusableTextField(title: "Enter Your Password Again", text: $verifyPassword)
            
            ReusableButton(title: "Sign up") {}

        }
            
    }
}


#Preview {
    SignUpScreen()
}
