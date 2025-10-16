//
//  AlertBootCamp.swift
//  BootCamp_SwiftUI
//
//  Created by Koushik Reddy Kambham on 10/16/25.
//

import SwiftUI

struct AlertBootCamp : View {
    
    @State var showAlert: Bool = false
    @State var backgroundColor: Color = Color.black
    
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            Button("click here") {
                showAlert.toggle()
            }
            .alert(isPresented: $showAlert) {
                getAlert()
            }
        }
    }
    
    func getAlert() -> Alert {
        return
            Alert(title: Text("aslert "), message: Text("message"), primaryButton: .destructive(Text("delete"), action: {
                backgroundColor = .red
            }), secondaryButton: .cancel())
    }
}

#Preview {
    AlertBootCamp()
}
