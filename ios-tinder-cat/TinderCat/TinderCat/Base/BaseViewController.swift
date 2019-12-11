//
//  BaseViewController.swift
//  TinderCat
//
//  Created by Yesid Hernandez on 3/12/19.
//  Copyright © 2019 Yesid Hernandez. All rights reserved.
//

import Foundation
import UIKit

class BaseViewController: UIViewController, BaseViewType {

    func initializeComponents() {
        fatalError("This method must be implemented")
    }

    func setConstraints() {
        fatalError("This method must be implemented")

    }

    func setupViews() {
        fatalError("This method must be implemented")
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        initializeComponents()
        setupViews()
        setConstraints()
    }

}
