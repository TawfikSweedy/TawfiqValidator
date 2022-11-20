//
//  BGNetworkHelper.swift
//  BGApp
//
//  Created by BasemElgendy on 10/08/2021.
//

import Foundation
import Moya
import SystemConfiguration

struct BGNetworkHelper {
    
    // MARK: - print response
    fileprivate static func printResponse(_ response: Response) {
        // print request data
        print("URL:")
        print(response.request?.urlRequest ?? "")
        print("Header:")
        print((response.request?.headers ?? nil) as Any)
        print("STATUS:")
        print(response.statusCode)
        print("Response:")
        if let json = try? JSONSerialization.jsonObject(with: response.data, options: .mutableContainers) {
            print(json)
        } else {
            let response = String(data: response.data, encoding: .utf8)!
            print(response)
        }
    }
    
    // MARK: - validate all APIs responses
    static func validateResponse (response:Response) ->Bool {
        printResponse(response)
//        guard response.statusCode == BGConstants.success else{
//            if response.statusCode == 401 {
//                BGLoginManger.logout()
//            }
//            return false
//        }
        let decoder = JSONDecoder()
        do {
            let responseModel = try decoder.decode(ResponseModel.self, from: response.data)
            switch responseModel.messageCode {
            case BGConstants.success? :
                return true
            case BGConstants.added? , BGConstants.created?:
                print("Error \(BGConstants.created)")
//                BGAlertPresenter.displayToast(title: "",message: responseModel.message ?? "", type: .success)
                return true
            case BGConstants.unprocessableEntity?:
                print("Error \(BGConstants.unprocessableEntity)")
//                BGLoginManger.removeUser()
//                Helper.SaveApiToken(ApiToken: nil)
//                BGLoginManger.logout()
                return false
            case BGConstants.notFound?:
                print("Error \(BGConstants.notFound)")
//                BGAlertPresenter.displayToast(title: "",message: responseModel.message ?? "", type: .error)
                return false
            case BGConstants.unauthenticated?:
                print("Error \(BGConstants.unauthenticated)")
//                BGAlertPresenter.displayToast(title: "",message: responseModel.message ?? "", type: .error)
//                BGLoginManger.logout()
                return false
            case BGConstants.notActive?:
                print("Error \(BGConstants.notActive)")
//                BGAlertPresenter.displayToast(title: "",message: responseModel.message ?? "", type: .error)
                return  true
            case BGConstants.failed?:
                print("Error \(BGConstants.failed)")
//                BGAlertPresenter.displayToast(title: "",message: responseModel.message ?? "", type: .error)
                return  false
            default:
                return false
            }
        } catch {
            print(error.localizedDescription)
            return false
        }
        
    }
    
}
