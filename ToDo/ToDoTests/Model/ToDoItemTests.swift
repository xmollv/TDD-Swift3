//
//  ToDoItemTests.swift
//  ToDo
//
//  Created by Xavi Moll on 26/02/2017.
//  Copyright © 2017 Xavi Moll. All rights reserved.
//

import XCTest
@testable import ToDo

class ToDoItemTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_Init_TakesTitle() {
        _ = ToDoItem(title: "Foo")
    }
    
    func test_Init_TakesTitleAndDescription() {
        _ = ToDoItem(title: "Foo", itemDescription: "Bar")
    }
    
}
