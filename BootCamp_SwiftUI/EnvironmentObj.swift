//
//  EnvironmentObj.swift
//  SwiftUI_Oct21
//
//  Created by Koushik Reddy Kambham on 10/21/25.
//

import SwiftUI

class DataModel: ObservableObject {
    @Published var sample: String = "sample text"
}

struct EnvironmentObj: View {
    
    @State private var path = NavigationPath()
    @StateObject private var dataObj = DataModel()
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack(spacing: 20) {
                Text("First Screen")
                    .font(.title2)
                Button("Click here to go to next screen") {
                    path.append("MidScreen")
                }
            }
            .navigationDestination(for: String.self) { value in
                switch value {
                case "MidScreen":
                    MidScreen(path: $path)
                case "LastScreen":
                    LastScreen()
                default:
                    EmptyView()
                }
            }
        }
        .environmentObject(dataObj)
    }
}

struct MidScreen: View {
    @Binding var path: NavigationPath
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Mid Screen")
                .font(.title2)
            Button("Go to Last Screen") {
                path.append("LastScreen")
            }
        }
    }
}

struct LastScreen: View {
    @EnvironmentObject var dataObj: DataModel
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Last Screen")
                .font(.title2)
            
            Text("Shared Value: \(dataObj.sample)")
                .foregroundColor(.blue)
            
            Button("Change Value") {
                dataObj.sample = "Updated from Last Screen"
            }
        }
    }
}

#Preview {
    EnvironmentObj()
}
