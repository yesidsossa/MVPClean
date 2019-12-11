//
//  BasePresenter.swift
//  TinderCat
//
//  Created by Yesid Hernandez on 10/12/19.
//  Copyright © 2019 Yesid Hernandez. All rights reserved.
//

import Foundation

protocol BasePresenterProtocol {

    var view: BaseView? { get set }

    func bind(withView view: BaseView)

    func unBind()
    
    func viewDidLoad()
}

class BasePresenter: NSObject, BasePresenterProtocol, ErrorProcessorProtocol {
    
    weak var view: BaseView?

    weak var errorHandler: ErrorHandlerProtocol?

    func handleException(error: Error, associatedData: Any?) {
    }
    
    func bind(withView view: BaseView) {
        self.view = view
        self.errorHandler = view
    }

    func unBind() {
        self.view = nil
        self.errorHandler = nil
    }
    
    func viewDidLoad() {
        // This method should be overrided
    }
}
