//
//  CatViewCoordinator.swift
//  TinderCat
//
//  Created by Yesid Hernandez on 5/12/19.
//  Copyright © 2019 Yesid Hernandez. All rights reserved.
//

import Foundation
import UIKit

class CatViewCoordinator: Coordinator {
    
    var childCoordinators: [Coordinator] = []
    unowned let navigationController:UINavigationController

    required init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        
    }
    
    func start() {
        let catViewController : CatViewController = CatViewController()
        catViewController.delegate = self as? CatViewControllerDelegate
        self.navigationController.viewControllers = [catViewController]
    }
    
    
}

extension CatViewCoordinator: CatViewControllerDelegate {

    func navigateToNextPage() {
       let secondCoordinator = SecondCoordinator(navigationController: navigationController)
       secondCoordinator.delegate = self
       childCoordinators.append(secondCoordinator)
       secondCoordinator.start()
    }
}

extension CatViewCoordinator: BackToFirstViewControllerDelegate {
    
    func navigateBackToFirstPage(newOrderCoordinator: SecondCoordinator) {
        navigationController.popToRootViewController(animated: true)
        childCoordinators.removeLast()
    }
}
