//
//  Constants.swift
//  BGApp
//
//  Created by BasemElgendy on 10/08/2021.
//

import Foundation

struct BGConstants {
    
    
    // MARK: - Network response status
    
    static var success:Int {return 200}
    static var added:Int {return 202}
    static var failed:Int {return 400}
    static var created:Int {return 201}
    static var unprocessableEntity : Int {return 401}
    static var notActive : Int {return 405}
    static var unauthenticated : Int {return 403}
    static var notAcceptable : Int {return 422}
    static var notFound : Int {return 404}
    static var userType : Int {return 1}
    
    // MARK: - GOOGLE MAPS Constants
    
    static var mapKey : String {return "AIzaSyCjsvKLJRP5P00s2xMRbJKWIQ2bCifh9bs"}
    static var mapStyle : String {return "&zoom=11&style=feature:transit.line%7Cvisibility:simplified%7Ccolor:0xbababa&style=feature:road.highway%7Celement:labels.text.stroke%7Cvisibility:on%7Ccolor:0xb06eba&style=feature:road.highway%7Celement:labels.text.fill%7Cvisibility:on%7Ccolor:0xffffff&maptype=terrain&scale=2&size=400x400&"}
    
    
    // MARK: - APIs Constants
    //    https://motimback.wecancity.com/    new2
    //    https://motimbackapi.wecancity.com/ new
    //    https://motimdevapi.wecancity.com/  old
        static var baseURL:String {return "https://motimback.wecancity.com/"}
        static var baseURLImages:String {return "https://motimback.wecancity.com/"}
        static var baseURLChat:String {return "https://motimbackapi.wecancity.com/chat/"}
        static var apiURL:String {return "\(baseURL)api/ar/"}
        static var imagesURL:String {return baseURL + "storage/"}
}

// MARK: - New
////    https://motimbackapi.wecancity.com/ new
////    https://motimdevapi.wecancity.com/  old
//    let lang = EasyLocalization.getLanguage().locale
//    static var baseURL:String {return "https://motimbackapi.wecancity.com/"}
//    static var baseURLImages:String {return "https://motimbackapi.wecancity.com/images/"}
//    static var baseURLChat:String {return "https://motimbackapi.wecancity.com/chat/"}
//    static var apiURL:String {return "\(baseURL)api/\(EasyLocalization.getLanguage().locale)/"}
//    static var imagesURL:String {return baseURL + "storage/"}


// MARK: - Old
//static var baseURL:String {return "https://motimdevapi.wecancity.com/"}
//static var baseURLImages:String {return "https://motimdevapi.wecancity.com/images/"}
//static var baseURLChat:String {return "https://motimdevapi.wecancity.com/chat/"}
//static var apiURL:String {return "\(baseURL)"}
//static var imagesURL:String {return baseURL + "storage/"}
