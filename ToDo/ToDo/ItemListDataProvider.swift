//
//  ItemListDataProvider.swift
//  ToDo
//
//  Created by Xavi Moll on 14/05/2017.
//  Copyright © 2017 Xavi Moll. All rights reserved.
//

import UIKit

class ItemListDataProvider: NSObject, UITableViewDataSource {
    
    var itemManager: ItemManager?
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let numberOfRows: Int
        switch section {
        case 0:
            numberOfRows = itemManager?.toDoCount ?? 0
        case 1:
            numberOfRows = itemManager?.doneCount ?? 0
        default:
            numberOfRows = 0
        }
        return numberOfRows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }

}
