//
//  SouthParkCharacters.swift
//  SouthParkAPISwiftUI
//
//  Created by Suraj Ramnani on 16/04/23.
//

import SwiftUI


struct SouthParkCharacters: View {
    
    var body: some View {
        
        ZStack {
            Color.green.ignoresSafeArea()
            
            VStack {
                Grid(horizontalSpacing: 2, verticalSpacing: 2) {
                    
                    GridRow{
                        Color.blue.frame(width: 180, height: 180)
                        Color.blue.frame(width: 180, height: 180)
                    }
                    Text("Butters")
                    
                    
                    GridRow{
                        Color.blue.frame(width: 180, height: 180)
                        Color.blue.frame(width: 180, height: 180)
                    }
                    GridRow{
                        Color.blue.frame(width: 180, height: 180)
                        Color.blue.frame(width: 180, height: 180)
                        
                    }
                    
                }
                .navigationTitle("Characters")
            }
        }
        
        
    }
    
    
    
}

    struct SouthParkCharacters_Previews: PreviewProvider {
        static var previews: some View {
            SouthParkCharacters()
        }
        
    }

