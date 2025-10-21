//
//  TabBarBootCamp.swift
//  BootCamp_SwiftUI
//
//  Created by Koushik Reddy Kambham on 10/21/25.
//

import SwiftUI

struct TabBarBootCamp : View {
    
    @State var selectedTab: Int = 2
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeBar(selectedTab: $selectedTab)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)
            Text("Home")
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(1)
            Text("Home 3")
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home 3")
                }
                .tag(2)
        }
        .accentColor(Color.blue)
//        .tabViewStyle(PageTabViewStyle())
        .background(Color.gray)
    }
}

struct HomeBar : View {
    @Binding var selectedTab : Int
    
    var body: some View {
        
        VStack{
            Text("Home page")
            
            Button("Go to home 3") {
                selectedTab = 2
            }
        }
    }
}

#Preview {
    TabBarBootCamp()
}
