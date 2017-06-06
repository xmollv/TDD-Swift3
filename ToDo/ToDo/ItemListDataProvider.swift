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

@objc protocol ItemManagerSettable {
    var itemManager: ItemManager? { get set }
}

class ItemListDataProvider: NSObject, UITableViewDataSource, UITableViewDelegate, ItemManagerSettable {
    
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath) as! ItemCell
        
        guard let itemManager = itemManager else { fatalError() }
        guard let section = Section(rawValue: indexPath.section) else { fatalError() }
        
        let item: ToDoItem
        switch section {
        case .toDo:
            item = itemManager.item(at: indexPath.row)
        case .done:
            item = itemManager.doneItem(at: indexPath.row)
        }
        
        cell.configCell(with: item)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String? {
        
        guard let section = Section(rawValue: indexPath.section) else { fatalError() }
        
        let buttonTitle: String
        switch  section {
        case .toDo:
            buttonTitle = "Check"
        case .done:
            buttonTitle = "Uncheck"
        }
        
        return buttonTitle
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        guard let itemManager = itemManager else { fatalError() }
        guard let section = Section(rawValue: indexPath.section) else { fatalError() }
        
        switch section {
        case .toDo:
            itemManager.checkItem(at: indexPath.row)
        case .done:
            itemManager.uncheckItem(at: indexPath.row)
        }
        
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView,
                   didSelectRowAt indexPath: IndexPath) {
        guard let itemSection = Section(rawValue: indexPath.section) else
        { fatalError() }
        switch itemSection {
        case .toDo:
            NotificationCenter.default.post(
                name: NSNotification.Name("ItemSelectedNotification"),
                object: self,
                userInfo: ["index": indexPath.row])
        default:
            break
        }
    }

}
