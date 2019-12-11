//
//  CustomErrors.swift
//  EvercheckWallet
//
//  Created by Genesis Sanguino on 16/10/18.
//  Copyright © 2018 CE Broker. All rights reserved.
//

import UIKit

public enum CustomErrors: Error {
    
    public enum ApiRequest: Error {
        case serviceError(description: String)
        case unauthorized
        case parseIssue
        case serverUnresponsive
        case emptyJson
        case malformedURL
        case missingToken
        case missingAuthorizationType
    }
    
    public enum TouchId: Error {
        case firstTimeLogin
        case invalidCredentials
    }
    
    public enum LicenseSubmition: Error {
        case invalidSubmition
    }
    
    public enum Programming: Error {
        case pickerFileNotFound
        case canNotCreateURLFromString
    }
    
    public enum Realm: Error {
        case unableToDelete
    }
    
    public enum Images: Error {
        case unableToLoad
    }
    
    public enum DeviceAuthorizations: Error {
        case pushNotificationsNotAllowed
        case photosAccessNotAllowed
    }
    
    public enum System: Error {
        case unableToRefresh
    }
    
    public enum LocalStorage: Error {
        case valueNotFound
    }
}
