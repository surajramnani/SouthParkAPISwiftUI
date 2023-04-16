//
//  ContentView.swift
//  SouthParkAPISwiftUI
//
//  Created by Suraj Ramnani on 16/04/23.
//

import SwiftUI



struct ContentView: View {
    init() {
        UITabBar.appearance().backgroundColor = UIColor.lightGray
     }
    var body: some View {
        
        ZStack {
         
        
            VStack {
                
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
