//
//  SouthParkSettings.swift
//  SouthParkAPISwiftUI
//
//  Created by Suraj Ramnani on 18/04/23.
//

import SwiftUI

struct SouthParkSettings: View {
    var body: some View {
        
        List{
            Section {
                NavigationLink("Official Site", destination:  WebView(url: URL(string: "https://www.southparkstudios.com/")!))
                NavigationLink("South Park Official Youtube Channel", destination:  WebView(url: URL(string: "https://www.youtube.com/channel/UC7R27sAWc_DqOldtI1JcYhQ")!))
                NavigationLink("South Park Official Merchandise", destination:  WebView(url: URL(string: "https://www.redwolf.in/south-park-merchandise-india")!))
                
            }}}}
    

struct SouthParkSettings_Previews: PreviewProvider {
    static var previews: some View {
        SouthParkSettings()
    }
}
