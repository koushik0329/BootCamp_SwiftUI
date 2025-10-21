//
//  PickerBootCamp.swift
//  BootCamp_SwiftUI
//
//  Created by Koushik Reddy Kambham on 10/16/25.
//

import SwiftUI
struct PickerBootCamp : View {
    
    @State var selection : String = "1"

    var body: some View {
        
        VStack {
            Text(selection)
            Picker(
                selection: $selection,
                label: Text("Picker Label")
            ) {
                ForEach(1..<5) { number in
                    
                    Text("\(number)")
                        .tag("\(number)")
                }
            }
//            .pickerStyle(MenuPickerStyle())
            .pickerStyle(.segmented)
        }
    }
}

#Preview{
    PickerBootCamp()
}
