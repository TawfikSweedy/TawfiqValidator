//
//  EndPoints.swift
//  BGApp
//
//  Created by BasemElgendy on 10/08/2021.
//

import Foundation

enum EndPoints: String {
    
//    case countries = "app/countries"
    case login = "Customer/Login"
    case Intro = "settings"
    case Register = "Customer/Register"
    case Otp = "Customer/SendOTP"
    case VerifyOtp = "Customer/VefiryUser"
    case profile = "Customer/profile"
    case Reset = "Customer/ResetPassword"
    case change = "Customer/ChangePassword"
    case updateProfile = "Customer/UpdateProfile"
    
    
    case Categories = "Category/GetAll"
    case categoryDetails = "Category/GetById"
    case Notifications = "Notification/GetCustomerNotificationsByCustomerToken"
    case Packages = "CustomerPackage/GetAll"
    case AllPackage = "Package/GetPackageList"
    case packageDetails = "Package/GetById"
    case HistoryPackage = "CustomerPackage/GetCustomerPackages"
    case Service = "Service/CustomerServiceRequestsHistory"
    case SubCategory = "Category/GetSubCategory"
    case servicesByCategory = "Service/GetByCategoryId"
    case subscriePackage = "CustomerPackage/Create"
    case searchService = "Service​/ServiceSearch​/search"
    case addService = "ServiceRequest/Create"
    case attachments = "ImageReference/GetImageList"
    case addAttachments = "Attachment/Create"
    case attachmentsImages = "Attachment/GetUserAttachmentList"
    case cities = "City/GetByRegionId"
    case regions = "Region/GetAllForList"
    case allChats = "Message/GetCustomerMessages"
    case chatHistory = "Message/GetMessageThread"
    case sendMsg = "Chat"
}

// MARK: - New
//case countries = "app/countries"
//case login = "Customer/Login"
//case Intro = "settings"
//case Register = "Customer/Register"
//case Otp = "Otp"
//case profile = "Customer​/profile"
//case Reset = "Customer​/ResetPassword"
//case updateProfile = "Customer/UpdateProfile"
//
//
//case Categories = "Category/GetAll"
//case Notifications = "Notification/user"
//case Packages = "CustomerPackage/GetAll"
//case AllPackage = "Package/GetAllPackageList"
//case HistoryPackage = "CustomerPackage/GetCustomerPackages"
//case Service = "Service​/CustomerServiceRequestsHistory"
//case SubCategory = "Category/GetSubCategory"
//case servicesByCategory = "Service"
//case subscriePackage = "CustomerPackage/Create"
//case searchService = "Service​/ServiceSearch​/search"
//case addService = "api/ServiceRequest"
//case attachments = "ImageReference​/GetAllImageRefrenceList"
//case addAttachments = "Attachment/Create"
//case attachmentsImages = "Attachment/GetUserAttachmentList"
//case cities = "City​/GetCityList"
//case regions = "Region​/GetAll"
//case allChats = "ChatThread/user"
//case chatHistory = "Chat/user"
//case sendMsg = "Chat"


// MARK: - Old
//case countries = "app/countries"
//case login = "api/User/Login"
//case Intro = "settings"
//case Register = "api/User/register/Customer"
//case Otp = "api/Otp"
//case profile = "api/User/profile"
//case Reset = "api/User/register/ResetPassword"
//case updateProfile = "api/User/UpdateProfile"
//
//
//case Categories = "api/Categories"
//case Notifications = "api/Notification/user"
//case Packages = "api/CustomerPackage"
//case AllPackage = "api/Package"
//case HistoryPackage = "api/CustomerPackage/userId"
//case Service = "history/service/user"
//case SubCategory = "api/Categories/parentId"
//case servicesByCategory = "api/Service"
//case subscriePackage = "api/CustomerPackage/user"
//case searchService = "api/Service/search"
//case addService = "api/ServiceRequest"
//case attachments = "api/ImageReference"
//case addAttachments = "api/Attachment"
//case attachmentsImages = "api/Attachment/user"
//case cities = "api/City"
//case regions = "api/Region"
//case allChats = "api/ChatThread/user"
//case chatHistory = "api/Chat/user"
//case sendMsg = "api/Chat"
