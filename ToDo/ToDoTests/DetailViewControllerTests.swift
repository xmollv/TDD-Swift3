//
//  DetailViewControllerTests.swift
//  ToDo
//
//  Created by Xavi Moll on 22/05/2017.
//  Copyright © 2017 Xavi Moll. All rights reserved.
//

import XCTest
@testable import ToDo

class DetailViewControllerTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_HasTitleLabel() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let sut = storyboard.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        _ = sut.view
        XCTAssertNotNil(sut.titleLabel)
    }
    
}
