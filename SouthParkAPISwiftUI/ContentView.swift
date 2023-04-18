//
//  ContentView.swift
//  SouthParkAPISwiftUI
//
//  Created by Suraj Ramnani on 16/04/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 2
    init() {
           UITabBar.appearance().backgroundColor = UIColor.white
           UITabBar.appearance().unselectedItemTintColor = UIColor.gray // optional: set the unselected item color
           UITabBar.appearance().tintColor = UIColor.black // set the accent color
       }
    @ObservedObject var SouthParkAPI = PostManager()
    var body: some View {
        
            ZStack {
                
                TabView(selection: $selection) {
                    NavigationView {
                        SouthParkCharacters()
                            .navigationTitle("Characters")
                        
                    }
                    .tabItem {
                        Label("Characters", systemImage: "figure.wave")
                        Text("Characters")
                    }
                    .tag(2)
                    NavigationView {
                        SouthParkEpisodes()
                            .navigationTitle("Episodes")
                    }
                    .tabItem {
                        Label("Episodes", systemImage: "tv")
                        Text("Episodes")
                    }
                    
                    
                    NavigationView {
                        SouthParkOther()
                            .navigationTitle("Families")
                    }
                    .tabItem {
                        Label("Families", systemImage: "figure.2.and.child.holdinghands")
                        Text("Families")
                    }
                    NavigationView {
                        SouthParkLinks()
                            .navigationTitle("Links")
                    }
                    .tabItem {
                        Label("Links", systemImage: "globe")
                 
                    }
                    NavigationView {
                        SouthParkSettings()
                            .navigationTitle("Settings")
                    }
                    .tabItem {
                        Label("Settings", systemImage: "gear")
                        Text("Settings")
                    }
                }
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
