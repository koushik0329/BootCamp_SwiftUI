//
//  ImageBootCamp.swift
//  BootCamp_SwiftUI
//
//  Created by Koushik Reddy Kambham on 10/2/25.
//

import SwiftUI

struct ImageBootCamp: View {
    var body: some View {
        Image("swift")
        //to enable color change
        //.renderingMode(.template)
                    .resizable()
                    //.aspectRatio(contentMode: .fit)
                    //.scaledToFit()
                    .scaledToFit()
                    .frame(width: 100, height: 200)
                    .border(.red, width: 10)
//                    .foregroundColor(.green)
//                    .clipped()
                    //.cornerRadius(150)
//                    .clipShape(
//                        Circle()
                        //RoundedRectangle(cornerRadius: 25.0)
                          //Ellipse()
                    //    Circle()
//                    )
    }
}

#Preview {
    ImageBootCamp()
}
