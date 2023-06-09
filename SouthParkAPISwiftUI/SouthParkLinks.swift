//
//  SouthParkLinks.swift
//  SouthParkAPISwiftUI
//
//  Created by Suraj Ramnani on 18/04/23.
//

import SwiftUI
import WebKit

struct SouthParkLinks: View {
    var body: some View {
        VStack {
            
            List{
                Section {
                    NavigationLink("Official Site", destination:  WebView(url: URL(string: "https://www.southparkstudios.com/")!))
                    NavigationLink("South Park Official Youtube Channel", destination:  WebView(url: URL(string: "https://www.youtube.com/channel/UC7R27sAWc_DqOldtI1JcYhQ")!))
                    NavigationLink("South Park Official Merchandise", destination:  WebView(url: URL(string: "https://www.redwolf.in/south-park-merchandise-india")!))
                    NavigationLink("South Park Discord", destination: WebView(url: URL(string:"https://discord.com/invite/rgW94f9f")!))
                    
                }
                
            header: {
                Text("South Park Official")
                
            }
            footer: {
                Text("South Park Official channels")
                
            }
                Section {
                    NavigationLink("South Park funny moments", destination:  WebView(url: URL(string: "https://www.youtube.com/watch?v=lqvUuMpU554&ab_channel=LethalLev")!))
                    NavigationLink("Best Eric Cartman Videos", destination:  WebView(url: URL(string: "https://www.youtube.com/watch?v=M6TrgH7SKks&pp=ygUKc291dGggcGFyaw%3D%3D")!))
                    
                }
            header: {
                Text("South Park Video Links")
                
            }
                Section {
                    NavigationLink("Scott Tenorman Must Die", destination:  WebView(url: URL(string: "https://www.southparkstudios.com/episodes/yf32xo/south-park-scott-tenorman-must-die-season-5-ep-4")!))
                    NavigationLink("Cartmanland", destination:  WebView(url: URL(string: "https://www.southparkstudios.com/episodes/zm98ei/south-park-cartmanland-season-5-ep-6")!))
                    NavigationLink("Wing", destination:  WebView(url: URL(string: "https://www.southparkstudios.com/episodes/h9tnne/south-park-wing-season-9-ep-3")!))
                    NavigationLink("The Cissy", destination:  WebView(url: URL(string: "https://www.southparkstudios.com/episodes/2opbg6/south-park-the-cissy-season-18-ep-3")!))
                    
                    
                }
            header: {
                Text("My Favorite Episodes")
                
            }
            
            }
            .listStyle(.plain)
        }
        
    }}

struct WebView: UIViewRepresentable {
    let url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = false // disable navigation gestures
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
    }
}
struct SouthParkLinks_Previews: PreviewProvider {
    static var previews: some View {
        SouthParkLinks()
    }
}
