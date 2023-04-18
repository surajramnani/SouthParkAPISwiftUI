//
//  SouthParkLinks.swift
//  SouthParkAPISwiftUI
//
//  Created by Suraj Ramnani on 18/04/23.
//

import SwiftUI
import WebKit

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
struct SouthParkLinks: View {
    var body: some View {
        NavigationView {
            VStack {
                
                List{
                    Section {
                        NavigationLink("Official Site", destination:  WebView(url: URL(string: "https://www.southparkstudios.com/")!))
                        NavigationLink("South Park funny moments", destination:  WebView(url: URL(string: "https://www.youtube.com/watch?v=lqvUuMpU554&ab_channel=LethalLev")!))
                    }
                    
                header: {
                    Text("South Park Video Links")
                    
                }
                footer: {
                    Text("A few of my favorite videos from SouthPark")
                        
                }
               
                }
                
            }
           
        }
    }
    
}

struct SouthParkLinks_Previews: PreviewProvider {
    static var previews: some View {
        SouthParkLinks()
    }
}
