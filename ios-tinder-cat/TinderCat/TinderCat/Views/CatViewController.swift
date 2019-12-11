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

class CatViewController: BaseViewController,CatViewDelegate {

    public weak var delegate: CatViewControllerDelegate?
    private let catPresenter = CatPresenter(catService: CatService())
    private var catList: [Cat] = []

    var containerView: UIView!
    var tableView: UITableView!

    override func initializeComponents() {
        catPresenter.setViewDelegate(catViewDelegate: self)

        containerView = UIView()
        containerView.translatesAutoresizingMaskIntoConstraints = false

        tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
    }

    override func setupViews() {
        containerView.backgroundColor = UIColor.red
        containerView.addSubview(tableView)
        view.addSubview(containerView)

        catPresenter.getCatList()
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func setConstraints() {
        containerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        containerView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        containerView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true

        tableView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 0).isActive = true
        tableView.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 0).isActive = true
        tableView.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: 0).isActive = true
        tableView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 0).isActive = true

    }
    
    func displayCats(cats: [Cat]) {
        catList = cats
        self.tableView.reloadData()
    }
    
    func showDetail() {
        self.delegate?.navigateToNextPage()
    }
      
}
extension CatViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return catList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "Cell")
        cell.textLabel?.text = catList[indexPath.row].name
        cell.detailTextLabel?.text = catList[indexPath.row].breed
        cell.accessoryType = .disclosureIndicator
        cell.isAccessibilityElement = true
        return cell
    }
}
extension CatViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        catPresenter.showDetail()
        
    }
}
