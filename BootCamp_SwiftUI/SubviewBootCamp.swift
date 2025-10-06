//
//  SubviewBootCamp.swift
//  BootCamp_SwiftUI
//
//  Created by Koushik Reddy Kambham on 10/6/25.
//
//Binding and subview


import SwiftUI

struct SubviewBootCamp: View {
    
    @State var text : String = "hello"
    
    var body: some View {
        
        
        
        ZStack {
            Color.red
                .ignoresSafeArea(edges: .all)
            
            VStack {
                Text(text)
                
                textFields
            }
        }
    }
    
    var textFields: some View {
        HStack {
            ButtonSubView(text: $text, title: "1")
            ButtonSubView(text: $text, title: "2")
            ButtonSubView(text: $text, title: "3")
        }
    }
}

#Preview {
    SubviewBootCamp()
}

struct ButtonSubView: View {
    
    @Binding var text : String
    let title : String
    @State var color = Color.blue
    
    var body: some View {
        VStack{
            
            Button( action: {
                text = "clicked"
                color = .green
            }, label: {
                Text(title)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
                    .foregroundColor(color)
            })
            
        }
    }
}
