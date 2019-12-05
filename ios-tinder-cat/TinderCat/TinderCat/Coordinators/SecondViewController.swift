//
//  SecondViewController.swift
//  TinderCat
//
//  Created by Yesid Hernandez on 5/12/19.
//  Copyright © 2019 Yesid Hernandez. All rights reserved.
//

import Foundation
import UIKit

public protocol SecondViewControllerDelegate: class {
    func navigateToFirstPage()
    func navigateToThirdPage()
}

class SecondViewController:  BaseViewController{
        
    public weak var delegate: SecondViewControllerDelegate?

    var containerView: UIView!
    
    var buttom: UIButton!
    
    override func initializeComponents() {
        containerView = UIView()
        containerView.translatesAutoresizingMaskIntoConstraints = false
        
        buttom = UIButton()
        buttom.translatesAutoresizingMaskIntoConstraints = false
    }
    
    override func setupViews() {
        containerView.backgroundColor = UIColor.blue
        buttom.setTitle("Clic", for: .normal)
        buttom.backgroundColor = UIColor.red
        containerView.addSubview(buttom)
        view.addSubview(containerView)
        
        buttom.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)

    }
    
    override func setConstraints() {
        containerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        containerView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        containerView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
        buttom.centerYAnchor.constraint(equalTo: containerView.centerYAnchor,constant: 0).isActive = true
        buttom.centerXAnchor.constraint(equalTo: containerView.centerXAnchor,constant: 0).isActive = true
    }
    
    @objc func buttonAction(sender: UIButton!) {
        self.delegate?.navigateToThirdPage()
    }
}
