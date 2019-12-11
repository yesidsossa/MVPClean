//
//  Constants.swift
//  Vatosawa
//
//  Created by Genesis on 10/16/18.
//  Copyright © 2018 CE Broker. All rights reserved.
//

public struct Constants  {
    
    struct AuthorizationType {
        static let basic = "basic"
        static let bearer = "bearer"
        static let authorization = "Authorization"
    }
    
    struct FileTypes {
        static let jpeg = "jpg"
        static let pdf = "pdf"
        static let docx = "docx"
    }
    
    struct MIMEType {
        static let image = "image/*"
        static let pdf = "application/pdf"
        static let docx = "application/vnd.openxmlformats-officedocument.wordprocessingml.document"
        static let any = "*/*"
    }
    
    struct Values {
        static let empty = ""
        static let dot = "."
    }
    
    struct Keychain {
        static let id = "evercheckwallet"
        static let accessToken = "accessToken"
        static let tokenType = "tokenType"
    }
    
}

public extension DateFormatter {
    static let walletApiDateFormat : DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"
        return formatter
    }()
}
