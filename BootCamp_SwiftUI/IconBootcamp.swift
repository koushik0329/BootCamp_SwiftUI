//
//  IconBootcamp.swift
//  BootCamp_SwiftUI
//
//  Created by Koushik Reddy Kambham on 10/2/25.
//

import SwiftUI

struct IconBootcamp: View {
    var body: some View {
        Image(systemName: "lock.document.fill")
                    .renderingMode(.original)
                    .font(.largeTitle)
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
                    //.scaledToFit()
                    //.scaledToFill()
                    //.font(.caption)
                    //.font(.system(size: 200))
                    .foregroundColor(Color.pink)
                    .frame(width: 200, height: 300)
                    //.clipped()
    }
}

#Preview {
    IconBootcamp()
}
