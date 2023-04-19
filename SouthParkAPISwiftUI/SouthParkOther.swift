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
        let array = ["McCorkmick Family" : "https://southpark.fandom.com/wiki/Category:McCormick_Family",
                     "Adams-Malkowski Family" : "https://southpark.fandom.com/wiki/Mr._Adams",
                     "Cartman Family" : "https://southpark.fandom.com/wiki/Category:Cartman/Tenorman_Family",
                     "Kern / Kimble / Marsh Family" : "https://southpark.fandom.com/wiki/Category:Kern_/_Kimble_/_Marsh_Family",
                     "Broflovski / Schwartz Family" : "https://southpark.fandom.com/wiki/Category:Broflovski_/_Schwartz_Family",
                     "Anderson / O'Donnell Family" : "https://southpark.fandom.com/wiki/Millard_Anderson",
                     "Barbrady Family" : "https://southpark.fandom.com/wiki/Officer_Barbrady",
                     "Biggle Family" : "https://southpark.fandom.com/wiki/Mr._Biggle",
                     "Black Family" : "https://southpark.fandom.com/wiki/Tolkien_Black",
                     "Burch Family" : "https://southpark.fandom.com/wiki/Richard_Burch"] 
        ZStack
        {
            VStack {
                Image("southparkepisodes")
                    .resizable()
                    .dynamicTypeSize(.xxxLarge)
                    .scaledToFit()
                    .clipShape(Circle()) // Apply a circular clip shape
                    .overlay(Circle().stroke(Color.blue, lineWidth: 8))
                
                List(post.posts, id: \.id){ post in
                        ForEach(array.keys.sorted(), id: \.self){ name in
                            if name == post.name, let url = array[name] {
                                NavigationLink(name, destination: DetailView(url:url))
                            }
                        }
                    
                    }
                   
                }
                .listStyle(.plain)
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
