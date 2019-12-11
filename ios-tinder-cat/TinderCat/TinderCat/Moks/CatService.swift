//
//  CatService.swift
//  TinderCat
//
//  Created by Yesid Hernandez on 10/12/19.
//  Copyright © 2019 Yesid Hernandez. All rights reserved.
//

import Foundation

class CatService {
    
    func getCats() -> [Cat]{
        
        let cats = [Cat(name: "Gato 1", breed: "Criollo"),
                             Cat(name: "Gato 2", breed: "Criollo"),
                             Cat(name: "Gato 3", breed: "Criollo")
        ]
        
       return cats
    }
}
