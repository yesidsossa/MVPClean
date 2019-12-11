//
//  APIContract.swift
//  Vatosawa
//
//  Created by Genesis Sanguino on 5/10/19.
//  Copyright © 2019 CE Broker. All rights reserved.
//
import RxSwift

public enum APIAuthorizationType: String {
    case truevault
    case wallet
    case none
}

public enum APIContentType: String {
    case json = "application/json"
    case formURLencoded = "application/x-www-form-urlencoded"
    case jpeg = "image/jpeg"
    case png = "image/png"
    case anyImage = "image/*"
    case pdf = "application/pdf"
    case anyDocument = "application/*"
    case any = "*/*"
}
