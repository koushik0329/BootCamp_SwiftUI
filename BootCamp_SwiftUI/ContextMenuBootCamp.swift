//
//  ContextMenuBootCamp.swift
//  BootCamp_SwiftUI
//
//  Created by Koushik Reddy Kambham on 10/16/25.
//

import SwiftUI

struct ContextMenuBootCamp : View {
    var body: some View {
        VStack(alignment: .leading, spacing: 11.0) {
            Image(systemName: "house.fill")
            
            Text("SwiftfullUI Thiubnkink")
            
            Text("use context mennu")
        }
        .padding()
        .background(Color.red)
        .cornerRadius(30)
        .contextMenu(menuItems: {
            Text("menu")
            Text("menu")
        })
    }
}

#Preview {
    ContextMenuBootCamp()
}
