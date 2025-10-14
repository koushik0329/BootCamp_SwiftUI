//
//  ListView.swift
//  BootCamp_SwiftUI
//
//  Created by Koushik Reddy Kambham on 10/13/25.
//


import SwiftUI

struct ListView : View {
    
    let sampleList = Array(repeating: "Sample", count: 10)
    
    var body : some View {
        
        VStack{
            Text("News")
                .font(.title)
            
            List(sampleList, id: \.self) { temp in
                RowView(title: temp, description: "Hey this is sample text, just for testing Hey this is sample text, just for testing Hey this is sample text, just for testing Hey this is sample text, just for testing", imageTitle: "swift", dateLabel: "10-13-2025")
            }
        }
    }
}

struct RowView : View {
    
    var title : String?
    var description : String?
    var imageTitle : String?
    var dateLabel : String?
    
    var body : some View {
        HStack {
            VStack(alignment: .leading, spacing: 5)  {
                Text(title ?? "")
                    .font(.title2)
                    .foregroundColor(.blue)
                    
                Text(description ?? "")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                HStack {
                    
                    Image(systemName: "square.and.arrow.up")
                        .foregroundColor(.blue)
                    
                    Text(dateLabel ?? "")
                        .font(.subheadline)
                        .foregroundColor(.gray.opacity(0.8))
                }
            }
            
            Spacer()
            
            Image(imageTitle ?? "")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
        }
    }
}

#Preview {
    ListView()
}
