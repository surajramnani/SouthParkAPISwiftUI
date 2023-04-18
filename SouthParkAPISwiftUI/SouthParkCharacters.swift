//
//  SouthParkCharacters.swift
//  SouthParkAPISwiftUI
//
//  Created by Suraj Ramnani on 16/04/23.
//

import SwiftUI

struct SouthParkCharacters: View {
    @ObservedObject var post = PostManager()
    
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
                
                // Wrap List inside a VStack
                List(post.posts) { post in
                    Text(post.name)
                }
                .listStyle(.plain)
                
            }
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

