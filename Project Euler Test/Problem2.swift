//
//  Problem2.swift
//  Project euler
//
//  Created by Cenny Davidsson on 2014-08-11.
//  Copyright (c) 2014 Cenny. All rights reserved.
//

import XCTest

class Problem2: XCTestCase {

    // Each new term in the Fibonacci sequence is generated by adding the previous two terms.
    // By starting with 1 and 2, the first 10 terms will be: 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
    // By considering the terms in the Fibonacci sequence whose values do not exceed four million,
    // find the sum of the even-valued terms.
    func testProblem() {
        
        let filterdArrayOfFibo = Fibonacci.numbersBelow(4_000_000).filter { $0 % 2 == 0 }
        let sumOfEvenFibo = filterdArrayOfFibo.reduce(0, combine: +)
        
        XCTAssertTrue(sumOfEvenFibo == 4_613_732)
    }
}
