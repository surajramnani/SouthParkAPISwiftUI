//
//  SouthParkCharacters.swift
//  SouthParkAPISwiftUI
//
//  Created by Suraj Ramnani on 16/04/23.
//

import SwiftUI

struct SouthParkCharacters: View {
    @ObservedObject var post = PostManager()
    let characterLinks = [
        "Gerald Broflovski": "https://southpark.fandom.com/wiki/Gerald_Broflovski",
        "Eric Cartman": "https://southpark.fandom.com/wiki/Eric_Cartman",
        "Kyle Broflovski": "https://southpark.fandom.com/wiki/Kyle_Broflovski",
        "Ike Broflovski": "https://southpark.fandom.com/wiki/Ike_Broflovski",
        "Kyle's Elephant": "https://southpark.fandom.com/wiki/Kyle%27s_Elephant",
        "Cleo Broflovski": "https://southpark.fandom.com/wiki/Cleo_Broflovski",
        "Murrey Broflovski": "https://southpark.fandom.com/wiki/Murrey_Broflovski",
        "Kyle Schwartz": "https://southpark.fandom.com/wiki/Kyle_Schwartz",
        "Future Kyle's Kids": "https://southpark.fandom.com/wiki/Future_Kyle%27s_Kids",
        "Liane Cartman": "https://southpark.fandom.com/wiki/Liane_Cartman"
    ]

    var body: some View {
        
        ZStack {
            Color.white.ignoresSafeArea()
            
            VStack {
                Grid(horizontalSpacing: 2, verticalSpacing: 2) {
                    GridRow{
                        Image("South Park")
                            .resizable()
                            .dynamicTypeSize(.xxxLarge)
                            .scaledToFit()
                            .clipShape(Circle()) // Apply a circular clip shape
                            .overlay(Circle().stroke(Color.blue, lineWidth: 8)) // Add a white border
                    }
                }
                
                
                List(post.posts, id: \.id) { post in
                                   ForEach(characterLinks.keys.sorted(), id: \.self) { name in // Use sorted keys to display the characters alphabetically
                                       if name == post.name, let url = characterLinks[name] {
                                           NavigationLink(name, destination: DetailView(url: url))
                                       }
                                   }
                               }
                           }
                
                
                
                
                
                
                
            }
            .listStyle(.plain)
            
            .onAppear {
                post.fetchData(endpoint: "characters")
            }
            .navigationTitle("Characters")
            // Set background color of VStack
        }
        
        
    }

    



    struct SouthParkCharacters_Previews: PreviewProvider {
        static var previews: some View {
            SouthParkCharacters()
        }
        
    }

