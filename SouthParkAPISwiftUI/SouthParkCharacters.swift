//
//  SouthParkCharacters.swift
//  SouthParkAPISwiftUI
//
//  Created by Suraj Ramnani on 16/04/23.
//

import SwiftUI

struct SouthParkCharacters: View {
    @ObservedObject var post = PostManager()
    let links = [
        ["name": "Gerald Broflovski", "url": "https://southpark.fandom.com/wiki/Gerald_Broflovski"],
        ["name": "Eric Cartman", "url": "https://southpark.fandom.com/wiki/Eric_Cartman"],
        ["name": "Kyle Broflovski", "url": "https://southpark.fandom.com/wiki/Kyle_Broflovski"]
        // add more links as needed
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
                
                
                List(post.posts) { post in
                    ForEach(links, id: \.self) { link in
                        NavigationLink(link["name"]!, destination: DetailView(url: link["url"]!))
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
    }
    



    struct SouthParkCharacters_Previews: PreviewProvider {
        static var previews: some View {
            SouthParkCharacters()
        }
        
    }

