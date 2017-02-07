//
//  FirstDemoTests.swift
//  FirstDemoTests
//
//  Created by Xavi Moll on 07/02/17.
//  Copyright © 2017 Xavi Moll. All rights reserved.
//

import XCTest
@testable import FirstDemo

class FirstDemoTests: XCTestCase {
    
    var viewController: ViewController!
    
    override func setUp() {
        super.setUp()
        viewController = ViewController()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_NumberOfVowels_WhenPassedDominik_ReturnsThree() {
        let string = "Dominik"
        let numberOfVowels = viewController.numberOfVowels(in: string)
        
        XCTAssertEqual(numberOfVowels, 3, "should find 3 vowels in Dominik", line: 24)
    }
    
    func test_MakeHeadline_ReturnsStringWithEachWordStartCapital() {
        let input = "this is A test headline"
        let expectedOutput = "This Is A Test Headline"
        
        let headline = viewController.makeHeadline(from: input)
        XCTAssertEqual(headline, expectedOutput)
    }
    
    func test_MakeHeadline_ReturnsStringWithEachWordStartCapital2() {
        let input = "Here is another Example"
        let expectedOutput = "Here Is Another Example"
        let headline = viewController.makeHeadline(from: input)
        XCTAssertEqual(headline, expectedOutput)
    }
    
}
