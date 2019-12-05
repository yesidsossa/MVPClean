//
//  Coordinator.swift
//  TinderCat
//
//  Created by Yesid Hernandez on 5/12/19.
//  Copyright © 2019 Yesid Hernandez. All rights reserved.
//

import Foundation
import UIKit

public protocol Coordinator: class{
    
    var childCoordinators: [Coordinator]{get set}
    init(navigationController: UINavigationController)
    func start()
    
}
