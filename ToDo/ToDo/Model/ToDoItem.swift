//
//  ToDoItem.swift
//  ToDo
//
//  Created by Xavi Moll on 26/02/2017.
//  Copyright © 2017 Xavi Moll. All rights reserved.
//

import Foundation

struct ToDoItem {
    let title: String
    let itemDescription: String?
    
    init(title: String, itemDescription: String? = nil) {
        self.title = title
        self.itemDescription = itemDescription
    }
}
