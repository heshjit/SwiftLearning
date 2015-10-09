//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Jithesh V K on 7/10/2015.
//  Copyright © 2015 Jithesh V K. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testMealInitialization() {
        //Success
        let goodObject = Meal(name: "FirstMeal", photo: nil, rating: 2)
        XCTAssertNotNil(goodObject,"Invalid object creation")
        //Failure
        let noName = Meal(name: "", photo: nil, rating: 5)
        XCTAssertNil(noName,"Empty name is invalid")
        
        let negativeRating = Meal(name: "negative food", photo: nil, rating: -2)
        XCTAssertNil(negativeRating,"Negative rating is invalid")
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}
