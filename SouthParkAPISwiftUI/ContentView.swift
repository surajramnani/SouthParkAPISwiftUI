//
//  ContentView.swift
//  SouthParkAPISwiftUI
//
//  Created by Suraj Ramnani on 16/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {

            SouthParkCharacters()
                .tabItem{
                    Label("Characters", systemImage: "figure.wave")
                    Text("Characters")
                }
            SouthParkEpisodes()
                .tabItem{
                    Label("Episodes", systemImage: "tv")
                    Text("Episodes")
                }
            SouthParkOther()
                .tabItem{
                    Label("Families", systemImage: "figure.2.and.child.holdinghands")
                    Text("Families")
                }
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
