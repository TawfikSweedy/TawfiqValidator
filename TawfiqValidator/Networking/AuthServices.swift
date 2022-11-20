//
//  AuthServices.swift
//  MOTIM
//
//  Created by Tawfik Sweedy✌️ on 1/26/22.
//

import Foundation
import Moya

enum AuthServices {
    case Login(parameters : [String:Any])
}
extension AuthServices : URLRequestBuilder {
    var path: String {
        switch self {
        case .Login:
            return EndPoints.login.rawValue
        }
    }
    var method: Moya.Method {
        switch self {
        case .Login :
            return .post
      }
    }
    var sampleData: Data {
        return Data()
    }
    var task: Task {
        switch self {
        case .Login(let param)  :
            return .requestParameters(parameters: param, encoding: JSONEncoding.default)
        }
    }
}
