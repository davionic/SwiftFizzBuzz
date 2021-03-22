//
//  FizzBuzzTests.swift
//  FizzBuzzTests
//
//  Created by David Rose on 3/22/21.
//

import XCTest
@testable import FizzBuzz

class FizzBuzzTests: XCTestCase {

    func fizzBuzz(number: Int) -> String {
       
           switch number {
           case _ where number % 3 == 0 && number % 5 == 0:
               return "Fizz Buzz"
           case _ where number % 3 == 0:
               return "Fizz"
           case _ where number % 5 == 0:
               return "Buzz"
           default:
               return String(number)
           }
       }
    
    func testFizzBuzz() {
      let values = [9,10,15,2]
        var resultArray: [String] = []
        for value in values {
            resultArray.append(fizzBuzz(number: value))
        }
        
        XCTAssertEqual(["Fizz", "Buzz", "Fizz Buzz", "2"], resultArray)
    }

}
