//
//  LoginModel.swift
//  MOTIM
//
//  Created by Tawfik Sweedy✌️ on 2/11/22.
//

import Foundation

struct LoginModel : Codable {
    let statusCode : Int?
    let message : String?
    let data : LoginData?

    enum CodingKeys: String, CodingKey {

        case statusCode = "statusCode"
        case message = "message"
        case data = "data"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        statusCode = try values.decodeIfPresent(Int.self, forKey: .statusCode)
        message = try values.decodeIfPresent(String.self, forKey: .message)
        data = try values.decodeIfPresent(LoginData.self, forKey: .data)
    }

}
struct LoginData : Codable {
    let message : String?
    let isAuthenticated : Bool?
    let username : String?
    let token : String?
    let expiresOn : String?

    enum CodingKeys: String, CodingKey {

        case message = "message"
        case isAuthenticated = "isAuthenticated"
        case username = "username"
        case token = "token"
        case expiresOn = "expiresOn"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        message = try values.decodeIfPresent(String.self, forKey: .message)
        isAuthenticated = try values.decodeIfPresent(Bool.self, forKey: .isAuthenticated)
        username = try values.decodeIfPresent(String.self, forKey: .username)
        token = try values.decodeIfPresent(String.self, forKey: .token)
        expiresOn = try values.decodeIfPresent(String.self, forKey: .expiresOn)
    }

}

