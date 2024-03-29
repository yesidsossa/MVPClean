//
//  CatViewController.swift
//  TinderCat
//
//  Created by Yesid Hernandez on 4/12/19.
//  Copyright © 2019 Yesid Hernandez. All rights reserved.
//

import Foundation
import UIKit

public protocol CatViewControllerDelegate: class {
    func navigateToNextPage()
}

class CatViewController: BaseViewController {
    
    public weak var delegate: CatViewControllerDelegate?

    var containerView: UIView!
    var buttom: UIButton!

    @objc func buttonAction(sender: UIButton!) {
        self.delegate?.navigateToNextPage()
    }
    
    override func initializeComponents() {
        containerView = UIView()
        containerView.translatesAutoresizingMaskIntoConstraints = false
        
        buttom = UIButton()
        buttom.translatesAutoresizingMaskIntoConstraints = false
    }
    
    override func setupViews() {
        containerView.backgroundColor = UIColor.red
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
        containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
        buttom.centerYAnchor.constraint(equalTo: containerView.centerYAnchor,constant: 0).isActive = true
        buttom.centerXAnchor.constraint(equalTo: containerView.centerXAnchor,constant: 0).isActive = true
    }
}
