//
//  BaseEndpoint.swift
//  EvercheckWalletAPI
//
//  Created by Genesis Sanguino on 6/10/18.
//  Copyright © 2018 CE Broker. All rights reserved.
//

import Alamofire

public class Endpoint<Response> {
    public let method: HTTPMethod
    public let relativePath: String
    public let parameters: [String: Any]?
    public let parameterEncoding: ParameterEncoding
    public let decode: (Data) throws -> Response
    public let authorizationType: APIAuthorizationType
    public let contentType: APIContentType
    
    public init(method: HTTPMethod = .get, relativePath: String, parameters: [String: Any]? = nil, parameterEncoding: ParameterEncoding = URLEncoding.default, authorizationType: APIAuthorizationType = .none, contentType: APIContentType = APIContentType.json, decode: @escaping (Data) throws -> Response) {
        self.method = method
        self.relativePath = relativePath
        self.parameters = parameters
        self.parameterEncoding = parameterEncoding
        self.decode = decode
        self.authorizationType = authorizationType
        self.contentType = contentType
    }
}

extension Endpoint where Response: Decodable {
    convenience public init(method: HTTPMethod = .get, relativePath: String, parameters: [String: Any]? = nil, parameterEncoding: ParameterEncoding = URLEncoding.default, authorizationType: APIAuthorizationType = .none, contentType: APIContentType = APIContentType.json) {
        self.init(method: method, relativePath: relativePath, parameters: parameters, parameterEncoding: parameterEncoding, authorizationType: authorizationType, contentType: contentType ){
            let decoder = JSONDecoder()
            decoder.dateDecodingStrategy = .formatted(DateFormatter.walletApiDateFormat)
            return try decoder.decode(Response.self, from: $0)
        }
    }
}

extension Endpoint where Response == Void {
    convenience public init(method: HTTPMethod = .get, relativePath: String, parameters: [String: Any]? = nil, parameterEncoding: ParameterEncoding = URLEncoding.default, authorizationType: APIAuthorizationType = .none, contentType: APIContentType = APIContentType.json) {
        self.init(method: method, relativePath: relativePath, parameters: parameters, parameterEncoding: parameterEncoding, authorizationType: authorizationType, contentType: contentType) { _ in }
    }
}

extension Endpoint where Response == String {
    convenience public init(method: HTTPMethod = .get, relativePath: String, parameters: [String: Any]? = nil, parameterEncoding: ParameterEncoding = URLEncoding.default, authorizationType: APIAuthorizationType = .none, contentType: APIContentType = APIContentType.json) {
        self.init(method: method, relativePath: relativePath, parameters: parameters, parameterEncoding: parameterEncoding, authorizationType: authorizationType, contentType: contentType) { response in
            return String(
                data: response,
                encoding: String.Encoding.utf8) ?? ""
        }
    }
}
