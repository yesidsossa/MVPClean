//
//  ThirdViewController.swift
//  TinderCat
//
//  Created by Yesid Hernandez on 5/12/19.
//  Copyright © 2019 Yesid Hernandez. All rights reserved.
//

import Foundation
import UIKit

class ThirdViewController: BaseViewController {
    
    public weak var delegate: SecondViewControllerDelegate?

    var containerView: UIView!
    
    override func initializeComponents() {
        containerView = UIView()
        containerView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    override func setupViews() {
        containerView.backgroundColor = UIColor.red
        view.addSubview(containerView)
    }
    
    override func setConstraints() {
        containerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        containerView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        containerView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    }
}
