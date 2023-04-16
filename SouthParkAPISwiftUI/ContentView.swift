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
            VStack {
                
                TabView(selection:$selection){
                    
                    SouthParkCharacters()
                        .tabItem{
                            Label("Characters", systemImage: "figure.wave")
                            Text("Characters")
                            
                        }
                    
                    
                    
                    SouthParkEpisodes()
                        .tabItem{
                            Label("Episodes", systemImage: "tv")
                            Text("Episodes")
                            Text("Tab 2")
                        }
                        .tag(2)
                    SouthParkOther()
                        .tabItem{
                            Label("Families", systemImage: "figure.2.and.child.holdinghands")
                            Text("Families")
                        }
                    
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
