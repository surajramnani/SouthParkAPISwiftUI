//
//  postData.swift
//  SouthParkAPISwiftUI
//
//  Created by Suraj Ramnani on 17/04/23.
//

import SwiftUI

struct SouthParkAPI: Decodable
{
    let data: [data]
}

struct data: Decodable, Identifiable
{

    let id: Int?
    let name: String
    let religion: String?
    let wiki_url: String?
    let url: String?
    
}

struct customStruct
{
    let customURL: String
}
