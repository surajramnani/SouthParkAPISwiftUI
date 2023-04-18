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
                            .scaledToFit()
                            .clipShape(Circle()) // Apply a circular clip shape
                            .overlay(Circle().stroke(Color.white, lineWidth: 4)) // Add a white border
                    }
                    
                    VStack { // Wrap List inside a VStack
                        List(post.posts) { post in
                            Text(post.name)
                        }
                        .listStyle(.plain)
                        
                    }
                    // Set background color of VStack
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        
        .onAppear {
            post.fetchData(endpoint: "characters")
        }
        .navigationTitle("Characters")
    }
}



      
        
        
        
    


    struct SouthParkCharacters_Previews: PreviewProvider {
        static var previews: some View {
            SouthParkCharacters()
        }
        
    }

