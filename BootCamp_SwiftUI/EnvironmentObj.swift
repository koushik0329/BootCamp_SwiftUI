//
//  EnvironmentObj.swift
//  BootCamp_SwiftUI
//
//  Created by Koushik Reddy Kambham on 10/14/25.
//

import SwiftUI

class A: ObservableObject{
    @Published var name: String = "koushik"
}

struct FirstView: View {
    
    @StateObject var aObj = A()
    
    var body: some View {
        NavigationStack {
            Text(aObj.name)
            NavigationLink("click here to go to second screen", destination: SecondView())
        }
        .environmentObject(aObj)
    }
}

struct SecondView: View {
    var body: some View {
        NavigationStack {
            NavigationLink("click here to go to second screen", destination: ThirdView())
        }
    }
}

struct ThirdView: View {
    var body: some View {
        NavigationStack {
            NavigationLink("click here to go to second screen", destination: FinalView())
        }
    }
}

struct FinalView: View {
    
    @EnvironmentObject var aObj: A
    
    var body: some View {
        Text(aObj.name)
        Text("last screen")
    }
}

#Preview {
    FirstView()
}
