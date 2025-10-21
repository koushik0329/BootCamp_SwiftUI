//
//  ActionSheetBootCamp.swift
//  BootCamp_SwiftUI
//
//  Created by Koushik Reddy Kambham on 10/16/25.
//

import SwiftUI

struct ActionSheetBootCamp : View {
    
    @State var showActionSheet: Bool = false
    
    var body: some View {
        Button("Add me") {
            showActionSheet.toggle()
        }
        .actionSheet(isPresented: $showActionSheet) {
            getActionSheet()
        }
    }
    
    func getActionSheet() -> ActionSheet {
        
        let buttonOne: ActionSheet.Button = .default(Text("DEFAULT Action")) {
                    print("DEFAULT Action Tapped")
                }
                
                let buttonTwo: ActionSheet.Button = .destructive(Text("DESTRUCTIVE Action")) {
                    print("DESTRUCTIVE Action Tapped")
                }
                
                let cancelButton: ActionSheet.Button = .cancel()
                return ActionSheet(
                    title: Text("Choose your action"),
                    message: Text("This is a secondary message."),
                    buttons: [buttonOne, buttonTwo, cancelButton] 
                )
        
//        return ActionSheet(title: Text("titjjjle"))
    }
}

#Preview {
    ActionSheetBootCamp()
}
