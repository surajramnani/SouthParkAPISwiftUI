//
//  SouthParkCharacters.swift
//  SouthParkAPISwiftUI
//
//  Created by Suraj Ramnani on 16/04/23.
//

import SwiftUI

struct SouthParkCharacters: View {
    var body: some View {
       
        List {
            Link("Kyle", destination: URL(string: "https://hotmail.com")!)
            Text("Cartman")
            Text("Kenny")
            Text("Butters")
        }
        .listStyle(.sidebar)
       
    }
}

struct SouthParkCharacters_Previews: PreviewProvider {
    static var previews: some View {
        SouthParkCharacters()
    }
}
