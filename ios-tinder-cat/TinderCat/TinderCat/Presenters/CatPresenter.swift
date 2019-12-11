//
//  CatPresenter.swift
//  TinderCat
//
//  Created by Yesid Hernandez on 10/12/19.
//  Copyright © 2019 Yesid Hernandez. All rights reserved.
//

import Foundation

protocol CatViewDelegate: NSObjectProtocol {
    func displayCats(cats: [Cat])
    func showDetail()
}
class CatPresenter {
    private let catService:CatService
    weak private var catViewDelegate : CatViewDelegate?
    
    init(catService:CatService){
        self.catService = catService
    }
    
    func setViewDelegate(catViewDelegate:CatViewDelegate?){
        self.catViewDelegate = catViewDelegate
    }
    
    func getCatList(){
        self.catViewDelegate?.displayCats(cats: catService.getCats())
    }
    
    func showDetail(){
        self.catViewDelegate?.showDetail()
    }
    
}
