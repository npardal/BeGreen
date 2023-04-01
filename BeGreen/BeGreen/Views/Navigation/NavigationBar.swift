//
//  NavigationBar.swift
//  BeGreen
//
//  Created by Nicole Pardal on 2023-04-01.
//

import SwiftUI

struct NavigationBar: View {
    @State private var selection = 0
    
   
    init() {
        // Set the background color of the navigation bar to a custom turquoise color
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor(named: "background")
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        
        let tabAppearance = UITabBarAppearance()
               tabAppearance.configureWithOpaqueBackground()
               tabAppearance.backgroundColor = UIColor(named: "background")
               UITabBar.appearance().standardAppearance = tabAppearance
    }
    
    var body: some View {
        NavigationView {
            TabView(selection: $selection) {
                HomePage()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                    .tag(0)
                
                Plant()
                    .tabItem {
                        Image(systemName: "leaf")
                        Text("Plant")
                    }
                    .tag(1)
                
                Profile()
                    .tabItem {
                        Image(systemName: "person.crop.circle")
                        Text("Profile")
                    }
                    .tag(2)
                
            }
            .background(CustomColor.background)
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("BeGreel")
      
        }      .background(CustomColor.background)
    }
}
struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar()
    }
}
