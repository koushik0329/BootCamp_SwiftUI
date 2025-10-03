//
//  SpacerBootcamp.swift
//  BootCamp_SwiftUI
//
//  Created by Koushik Reddy Kambham on 10/3/25.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        VStack {
            HStack(spacing : 0) {
                Image(systemName: "xmark")
                Spacer()
                Image(systemName: "gear")
            }
            .font(.title)
//            .background(Color.yellow)
            .padding(.horizontal)
//            .background(Color.blue)
            
            Spacer()
            
            Rectangle()
            .frame(height: 55)
        }
    }
}


#Preview {
    SpacerBootcamp()
}
