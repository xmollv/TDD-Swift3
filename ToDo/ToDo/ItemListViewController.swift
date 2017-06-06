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
    @IBOutlet var dataProvider: (UITableViewDataSource & UITableViewDelegate)!
    
    override func viewDidLoad() {
        tableView.dataSource = dataProvider
        tableView.delegate = dataProvider
    }
    
    @IBAction func addItem(_ sender: UIBarButtonItem) {
        present(InputViewController(), animated: true, completion: nil)
    }
}
