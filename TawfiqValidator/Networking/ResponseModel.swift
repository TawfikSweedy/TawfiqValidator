//
//  ResponseModel.swift
//  BGApp
//
//  Created by BasemElgendy on 10/08/2021.
//

import Foundation

struct ResponseModel : Codable{
    
    let messageCode : Int?
    let message : String?
    
    
    enum CodingKeys: String, CodingKey {
        case messageCode = "messageCode"
        case message = "message"
    }
}
