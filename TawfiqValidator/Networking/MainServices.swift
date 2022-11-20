//
//  MainServices.swift
//  MOTIM
//
//  Created by Tawfik Sweedy✌️ on 2/11/22.
//

import Foundation
//import Moya
//
//enum MainServices {
//    
//    case Categories
//    case CheckCategories(parameters : [String:Any])
//    case ServicesByCategory(parameters : [String:Any])
//    case CheckDocs(parameters : [String:Any])
//    case Packages(parameters : [String:Any])
//    case ImagesRefrence(parameters : [String:Any])
//    case AttachmentsUser(parameters : [String:Any])
//    case AllPackage
//    case PackageDetails(parameters : [String:Any])
//    case SubscribePackage(parameters : [String:Any])
//    case SearchService(search : String)
//    case Service
//    case Cities(parameters : [String:Any])
//    case Regions
//    case Notifications
//    case AllChats
//    case ChatHistory(parameters : [String:Any])
//    case subCategory(parameters : [String:Any])
//    case sendMsgWithFile(parameters : [String:Any] , file : Data , fileType : String)
//    case sendMsg(parameters : [String:Any])
//    case addService(parameters : [String:Any] , record : [String : Data])
//    case AddAttachment(parameters : [String:Any] , image : [String : Image?])
//    case list
//    
//}
//extension MainServices : URLRequestBuilder {
//    var path: String {
//        switch self {
//        case .Categories:
//            return EndPoints.Categories.rawValue
//        case .Notifications:
//            return EndPoints.Notifications.rawValue
//        case .CheckCategories:
//            return EndPoints.categoryDetails.rawValue
//        case .ChatHistory:
//            return EndPoints.chatHistory.rawValue
//        case .ServicesByCategory:
//            return EndPoints.servicesByCategory.rawValue
//        case .CheckDocs:
//            return EndPoints.servicesByCategory.rawValue
//        case .Packages:
//            return EndPoints.AllPackage.rawValue
//        case .ImagesRefrence:
//            return EndPoints.attachments.rawValue
//        case .PackageDetails:
//            return EndPoints.packageDetails.rawValue
//        case .SubscribePackage:
//            return EndPoints.subscriePackage.rawValue
//        case .SearchService(search: let search):
//            return EndPoints.searchService.rawValue + "/\(search)"
//        case .AllPackage:
//            return EndPoints.HistoryPackage.rawValue
//        case .Service:
//            return EndPoints.Service.rawValue
//        case .AttachmentsUser:
//            return EndPoints.attachmentsImages.rawValue
//        case .subCategory:
//            return EndPoints.SubCategory.rawValue
//        case .addService:
//            return EndPoints.addService.rawValue
//        case .AddAttachment:
//            return EndPoints.addAttachments.rawValue
//        case .Cities:
//            return EndPoints.cities.rawValue
//        case .Regions:
//            return EndPoints.regions.rawValue
//        case .AllChats:
//            return EndPoints.allChats.rawValue
//        case .sendMsgWithFile:
//            return EndPoints.sendMsg.rawValue
//        case .sendMsg:
//            return EndPoints.sendMsg.rawValue
//        case .list :
//            return "https://api.moyasar.com/v1/payments"
//        }
//    }
//    var method: Moya.Method {
//        switch self {
//        case .Categories , .AllPackage , .Service , .subCategory , .CheckCategories , .ServicesByCategory , .PackageDetails , .CheckDocs , .SearchService , .Cities , .Regions , .Notifications , .AllChats , .ChatHistory , .list:
//            return .get
//        case .SubscribePackage , .addService , .AddAttachment , .sendMsgWithFile , .sendMsg , .Packages , .ImagesRefrence , .AttachmentsUser :
//            return .post
//        }
//    }
//    var sampleData: Data {
//        return Data()
//    }
//    var task: Task {
//        switch self {
//        case .Categories , .AllPackage , .Service , .SearchService , .Regions , .Notifications , .AllChats  , .list :
//            return .requestPlain
//        case .Packages(let param) , .ImagesRefrence(let param) , .AttachmentsUser(let param)  :
//            return .requestParameters(parameters: param, encoding: JSONEncoding.default)
//        case .CheckDocs(let param) , .PackageDetails(let param) , .CheckCategories(let param) , .subCategory(let param) , .ServicesByCategory(let param) , .SubscribePackage(let param) , .ChatHistory(let param) :
//            return .requestParameters(parameters: param, encoding: URLEncoding.queryString)
//        case .Cities(let param)  :
//            return .requestParameters(parameters: param, encoding: URLEncoding.queryString)
//        case .addService(let param , let record):
//            var formData = [Moya.MultipartFormData]()
//            // append record to request
//            for (key , record) in record {
//                formData.append(Moya.MultipartFormData(provider: .data(record), name: "\(key)", fileName: "VoiceNotePath", mimeType: "audio/m4a"))
//                // append parameters to request
//                for (key, value) in param {
//                    formData.append(Moya.MultipartFormData(provider: .data((value as AnyObject).data(using: String.Encoding.utf8.rawValue)!), name: key))
//                }
//            }
//            return .uploadMultipart(formData)
//        case .AddAttachment(let param , let image):
//            var formData = [Moya.MultipartFormData]()
//            // append image to request
//            for (key , image) in image {
//                if let selectedImage = image {
//                    formData.append(Moya.MultipartFormData(provider: .data(selectedImage.fixOrientation().jpegData(.lowest)!), name: "\(key)", fileName: "image_\(Int(Date().timeIntervalSince1970))"+".jpeg", mimeType: "image/jpeg"))
//                }
//                // append parameters to request
//                for (key, value) in param {
//                    formData.append(Moya.MultipartFormData(provider: .data((value as AnyObject).data(using: String.Encoding.utf8.rawValue)!), name: key))
//                }
//            }
//            return .uploadMultipart(formData)
//        case .sendMsgWithFile(let param , let file , let fileType):
//            var formData = [Moya.MultipartFormData]()
//            // append file to request
//                if fileType == "1" {
//                    formData.append(Moya.MultipartFormData(provider: .data(file), name: "FilePath", fileName: "image_\(Int(Date().timeIntervalSince1970))"+".jpeg", mimeType: "image/jpeg"))
//                }else if fileType == "2" {
//                    formData.append(Moya.MultipartFormData(provider: .data(file), name: "FilePath", fileName: "VoiceNotePath", mimeType: "audio/m4a"))
//                }else if fileType == "3" {
//                    formData.append(Moya.MultipartFormData(provider: .data(file), name: "FilePath", fileName: "file_\(Int(Date().timeIntervalSince1970))"+".pdf", mimeType: "application/pdf"))
//                }
//            // append parameters to request
//            for (key, value) in param {
//                formData.append(Moya.MultipartFormData(provider: .data((value as AnyObject).data(using: String.Encoding.utf8.rawValue)!), name: key))
//            }
//            return .uploadMultipart(formData)
//        case .sendMsg(let param) :
//            var formData = [Moya.MultipartFormData]()
//            // append parameters to request
//            for (key, value) in param {
//                formData.append(Moya.MultipartFormData(provider: .data((value as AnyObject).data(using: String.Encoding.utf8.rawValue)!), name: key))
//            }
//            return .uploadMultipart(formData)
//        }
//    }
//}
