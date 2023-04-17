//
//  SouthParkCharacters.swift
//  SouthParkAPISwiftUI
//
//  Created by Suraj Ramnani on 16/04/23.
//

import SwiftUI

struct SouthParkCharacters: View {
    var body: some View {
                
                VStack {
                    List {
                        Link("Kyle", destination: URL(string: "https://hotmail.com")!)
                        Text("Cartman")
                        Text("Kenny")
                        Text("Butters")
                    }
                    .listStyle(.sidebar)
                    
                    Grid(horizontalSpacing: 2, verticalSpacing: 2) {
                        GridRow{
                            Color.blue.frame(width: 160, height: 160)
                            Color.blue.frame(width: 160, height: 160)
                        }
                    }
                    .gridCellColumns(10)
                }
            }
        }


    struct SouthParkCharacters_Previews: PreviewProvider {
        static var previews: some View {
            SouthParkCharacters()
        }
        
    }

