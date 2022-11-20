//
//  Validator.swift
//  TawfiqValidator
//
//  Created by Tawfik Sweedy✌️ on 11/20/22.
//

import Foundation
import Moya
import PromiseKit

public class Validator {
        
    public static func validEmail(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
    
    public static func SayHello() {
        print("Hello!")
    }
    
    static func Login(_ phone : String , _ password : String){
        let params : [String : Any] =
        [
            "phoneNumber"          : phone    ,
            "password"             : password ,
        ]
        firstly { () -> Promise<Any> in
            return BGServicesManager.CallApi(MoyaProvider<AuthServices>(),AuthServices.Login(parameters: params))
        }.done({ response in
            let result = response as! Response
            guard BGNetworkHelper.validateResponse(response: result) else{return}
            let data : LoginModel = try BGDecoder.decode(data: result.data)
            print(data)
        }).ensure {
        }.catch { (error) in
            print(error)
        }
    }
}
