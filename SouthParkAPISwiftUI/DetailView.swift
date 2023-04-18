//
//  CartmanView.swift
//  SouthParkAPISwiftUI
//
//  Created by Suraj Ramnani on 18/04/23.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        if let urlString = url, let url = URL(string: urlString) {
                   WebView(url: url)
               } else {
                   Text("Invalid URL")
               }
           }
       }

struct CartmanView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://google.com")
    }
}
