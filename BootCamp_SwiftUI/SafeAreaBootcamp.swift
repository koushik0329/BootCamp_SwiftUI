//
//  SafeAreaBootcamp.swift
//  BootCamp_SwiftUI
//
//  Created by Koushik Reddy Kambham on 10/3/25.


import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        
//        ZStack {
//            Color.blue
//            VStack {
//                Text("Hello world")
//                Spacer()
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            
//        }
        
        ScrollView {
            VStack {
                Text("Title goes here")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(Color.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                }
            }
        }
        .background(
            Color.red
                .ignoresSafeArea(edges: .top)
        )
        
        
    

    }
}

struct SafeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamp()
    }
}
