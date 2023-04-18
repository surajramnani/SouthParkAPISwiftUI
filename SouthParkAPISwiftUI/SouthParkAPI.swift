//
//  SouthParkAPI.swift
//  SouthParkAPISwiftUI
//
//  Created by Suraj Ramnani on 17/04/23.
//

import SwiftUI
class PostManager: ObservableObject {
    
    
    
    @Published var posts = [data]()
    
    func fetchCharacters() {
        
    }
    func fetchData(endpoint: String) {
        if  let url = URL(string: "https://spapi.dev/api/\(endpoint)")
        {
            
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let results = try decoder.decode(SouthParkAPI.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts = results.data
                            }
                         
                            
                        }
                        catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
    
}
