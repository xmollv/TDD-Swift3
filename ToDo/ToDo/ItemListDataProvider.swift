//
//  ItemListDataProvider.swift
//  ToDo
//
//  Created by Xavi Moll on 14/05/2017.
//  Copyright © 2017 Xavi Moll. All rights reserved.
//

import UIKit

enum Section: Int {
    case toDo
    case done
}

class ItemListDataProvider: NSObject, UITableViewDataSource {
    
    var itemManager: ItemManager?
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        guard let itemManager = itemManager else { return 0 }
        guard let itemSection = Section(rawValue: section) else { fatalError() }
        
        let numberOfRows: Int
        switch itemSection {
        case .toDo:
            numberOfRows = itemManager.toDoCount
        case .done:
            numberOfRows = itemManager.doneCount
        }
        return numberOfRows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return ItemCell()
    }

}
