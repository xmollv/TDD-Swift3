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
        if let nextViewController =
            storyboard?.instantiateViewController(
                withIdentifier: "InputViewController")
                as? InputViewController {
            present(nextViewController, animated: true, completion: nil)
        }
    }
}
