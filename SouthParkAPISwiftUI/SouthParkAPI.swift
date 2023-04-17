//
//  SouthParkAPI.swift
//  SouthParkAPISwiftUI
//
//  Created by Suraj Ramnani on 17/04/23.
//

import SwiftUI
class PostManager: ObservableObject {
    
    @Published var posts = [data]()
    func fetchData() {
        if  let url = URL(string: "https://spapi.dev/api/characters")
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
                            print(results)
                            
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
