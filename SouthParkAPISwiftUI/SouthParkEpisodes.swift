//
//  SouthParkEpisodes.swift
//  SouthParkAPISwiftUI
//
//  Created by Suraj Ramnani on 16/04/23.
//

import SwiftUI

struct SouthParkEpisodes: View {
    @ObservedObject var post = PostManager()
    var body: some View {
        ZStack
        {
            VStack {
                Image("southparktv")
                    .resizable()
                .dynamicTypeSize(.xxxLarge)
                .scaledToFit()
                .clipShape(Circle()) // Apply a circular clip shape
                .overlay(Circle().stroke(Color.blue, lineWidth: 8))
                   
                List(post.posts) { post in
                    Text(post.name)
                }
                .listStyle(.plain)
            }
        }
        .onAppear {
            post.fetchData(endpoint: "episodes")
        }
    }
}

struct SouthParkEpisodes_Previews: PreviewProvider {
    static var previews: some View {
        SouthParkEpisodes()
    }
}
