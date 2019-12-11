//
//  TableViewAdapter.swift
//  TinderCat
//
//  Created by Yesid Hernandez on 10/12/19.
//  Copyright © 2019 Yesid Hernandez. All rights reserved.
//
import UIKit
import Foundation

protocol onCellTouchListener: class {
    func onCellTouch<Cell: UITableViewCell>(_ cell: Cell, object: Any)
}
