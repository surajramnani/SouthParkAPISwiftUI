//
//  SouthParkSettings.swift
//  SouthParkAPISwiftUI
//
//  Created by Suraj Ramnani on 18/04/23.
//

import SwiftUI

struct SouthParkSettings: View {
    var body: some View {
        
        List {
            HStack {
                Image(systemName: "paperplane")
                
                    .renderingMode(.template)
                    .foregroundColor(Color.white)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color.red)
                    .padding(8)
                    .background(Color.blue)
                
                NavigationLink("Privacy Policy", destination:  WebView(url: URL(string: "https://www.google.com/")!))
                Section{
                    
                    
                }}
        }
    }
    
}

struct SouthParkSettings_Previews: PreviewProvider {
    static var previews: some View {
        SouthParkSettings()
    }
}
