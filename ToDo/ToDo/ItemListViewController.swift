//
//  ItemListViewController.swift
//  ToDo
//
//  Created by Xavi Moll on 14/05/2017.
//  Copyright © 2017 Xavi Moll. All rights reserved.
//

import UIKit

class ItemListViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    @IBOutlet var dataProvider: (UITableViewDataSource & UITableViewDelegate & ItemManagerSettable)!
    
    let itemManager = ItemManager()
    
    override func viewDidLoad() {
        tableView.dataSource = dataProvider
        tableView.delegate = dataProvider
        dataProvider.itemManager = itemManager
    }
    
    @IBAction func addItem(_ sender: UIBarButtonItem) {
        if let nextViewController =
            storyboard?.instantiateViewController(
                withIdentifier: "InputViewController")
                as? InputViewController {
            nextViewController.itemManager = self.itemManager
            present(nextViewController, animated: true, completion: nil)
        }
    }
}
