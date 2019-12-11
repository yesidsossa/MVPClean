//
//  ErrorHandlerProtocol.swift
//  TinderCat
//
//  Created by Yesid Hernandez on 10/12/19.
//  Copyright © 2019 Yesid Hernandez. All rights reserved.
//

import Foundation

protocol ErrorHandlerProtocol: class {

    func showError(error: Error)

    func showConnectivityError()

    func hideConnectivityError()
}
