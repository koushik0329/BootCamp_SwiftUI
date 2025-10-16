//
//  ListBootCamp.swift
//  BootCamp_SwiftUI
//
//  Created by Koushik Reddy Kambham on 10/16/25.
//

import SwiftUI

struct ListBootCamp : View {
    
    @State var fruits : [String] = [
        "apple", "orange", "banana"
    ]
    
    var body: some View {
        NavigationStack {
            List{
                ForEach(fruits, id: \.self) { fruit in
                    Text(fruit)
                }
                .onDelete(perform: delete)
                .onMove(perform: move)
            }
            .navigationTitle("Test")
            .navigationBarItems(leading: EditButton())
        }
    }
    
    func delete(indexSet : IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newoffset : Int) {
        fruits.move(fromOffsets: indices, toOffset: newoffset)
    }
}

#Preview {
    ListBootCamp()
}
