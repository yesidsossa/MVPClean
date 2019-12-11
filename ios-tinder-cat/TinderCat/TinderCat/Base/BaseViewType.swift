//
//  BaseViewProtocol.swift
//  TinderCat
//
//  Created by Yesid Hernandez on 5/12/19.
//  Copyright © 2019 Yesid Hernandez. All rights reserved.
//

import Foundation

public protocol BaseViewType: AnyObject {

    func initializeComponents()
    func setConstraints()
    func setupViews()
    
}

