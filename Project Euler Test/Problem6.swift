//
//  Problem6.swift
//  Project euler
//
//  Created by Cenny Davidsson on 2014-08-11.
//  Copyright (c) 2014 Cenny. All rights reserved.
//

import XCTest

class Problem6: XCTestCase {

    // The sum of the squares of the first ten natural numbers is, 12 + 22 + ... + 102 = 385
    // The square of the sum of the first ten natural numbers is, (1 + 2 + ... + 10)2 = 552 = 3025
    // Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
    // Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
    func testProblem() {
        
        let n = 100
        let sumOfSquares = (n*(n+1)*(2*n+1))/6
        let squaresOfSums = Int(pow(Float(reduce(1...n, 0, +)), 2))
        
        XCTAssertTrue(squaresOfSums - sumOfSquares == 25_164_150)
    }
}
