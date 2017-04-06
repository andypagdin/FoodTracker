//
//  _FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Andy Pagdin on 05/04/2017.
//  Copyright © 2017 Andy Pagdin. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    
    //MARK: Meal Class Tests
    func testMealInitalisationSucceeds(){
        // Zero rating
        let zeroRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        // Highest positive rating
        let positiveRatingMeal = Meal.init(name: "Positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingMeal)
    }
    
    func testMealInitalisationFails(){
        // Negative rating
        let negativeRatingMeal = Meal.init(name: "Negative", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingMeal)
        
        // Empty String
        let emptyStringMeal = Meal.init(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyStringMeal)
    
        // Rating exceeds maximum
        let largeRatingMeal = Meal.init(name: "Large", photo: nil, rating: 6)
        XCTAssertNil(largeRatingMeal}
}
