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
        UITabBar.appearance().backgroundColor = UIColor.lightGray
    }
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
                }
                .accentColor(.red)
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
