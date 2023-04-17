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
                HStack {
                    VStack {
                        Grid(horizontalSpacing: 2, verticalSpacing: 2) {
                            GridRow{
                                Image( "EricCartman")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Circle()) // Apply a circular clip shape
                                           .overlay(Circle().stroke(Color.white, lineWidth: 4)) // Add a white border
                                   
                                Image(systemName: "cloud.bolt")
                                    .resizable()
                                    .scaledToFit()
                                    
                                
                                   
                            }
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
                        Image(systemName: "globe")
                    }
                }
                }
            }
            
            
        }
        
        
    }


    struct SouthParkCharacters_Previews: PreviewProvider {
        static var previews: some View {
            SouthParkCharacters()
        }
        
    }

