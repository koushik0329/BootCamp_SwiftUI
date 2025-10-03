//
//  SpacerBootcamp.swift
//  BootCamp_SwiftUI
//
//  Created by Koushik Reddy Kambham on 10/3/25.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        HStack(spacing: nil){
            Spacer(minLength: 0)
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle()
                .frame(width: 50, height: 50)
            
            Spacer(minLength: 0)
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle()
                .fill(Color.red)
                .frame(width: 50, height: 50)
            
            Spacer(minLength: 0)
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle()
                .fill(Color.blue)
                .frame(width: 50, height: 50)
            
            Spacer(minLength: 0)
                .frame(height: 10)
                .background(Color.orange)
        }
        .padding(.horizontal)
    }
}


#Preview {
    SpacerBootcamp()
}
