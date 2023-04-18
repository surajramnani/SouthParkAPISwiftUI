//
//  SouthParkOther.swift
//  SouthParkAPISwiftUI
//
//  Created by Suraj Ramnani on 16/04/23.
//

import SwiftUI

struct SouthParkOther: View {
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
            post.fetchData(endpoint: "families")
        }
    }
}


struct SouthParkOther_Previews: PreviewProvider {
    static var previews: some View {
        SouthParkOther()
    }
}
