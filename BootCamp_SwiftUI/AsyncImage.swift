//
//  AsyncImage.swift
//  BootCamp_SwiftUI
//
//  Created by Koushik Reddy Kambham on 10/23/25.
//


import SwiftUI

struct PhotoView : View {
    
    // Use an optional URL, as the URL(string:) initializer returns one
    let url: URL? = URL(string: "https://picsum.photos/400")
    
    var body: some View {
       
        AsyncImage(url: url) { image in
            image
                .resizable()
                .scaledToFit()
        } placeholder: {
            ProgressView()
        }
        .frame(width: 200, height: 200)
    }
}

#Preview {
    PhotoView()
}
