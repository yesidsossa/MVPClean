//
//  ErrorProcessorProtocol.swift
//  TinderCat
//
//  Created by Yesid Hernandez on 10/12/19.
//  Copyright © 2019 Yesid Hernandez. All rights reserved.
//

import Foundation

protocol ErrorProcessorProtocol {
    var errorHandler: ErrorHandlerProtocol? { get set }
    func handleException(error: Error, associatedData: Any?)
}
