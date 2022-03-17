//
//  Prime.swift
//  TrivagoTask
//
//  Created by Mariam Busayo Abdulkareem on 16/03/2022.
//

import Foundation
class Prime {
    
    static func generatePrimeFactors(for input: Int) -> [Int] {
        var valueEntered: Int = input
        var primeFactors: [Int] = []
        var possiblePrimeFactor: Int = 2
        
        while valueEntered > 1 {
            if hasRemainder(value: valueEntered, start: possiblePrimeFactor) {
                primeFactors.append(possiblePrimeFactor)
                valueEntered = nextDividend(for: valueEntered, divisor: possiblePrimeFactor)
            } else {
                possiblePrimeFactor = incrementNumber(possiblePrimeFactor, by: 1)
            }
        }
        return primeFactors
    }
    
    static func hasRemainder(value: Int, start: Int) -> Bool {
        return value % start == 0
    }
    
    static func incrementNumber(_ number: Int, by value: Int) -> Int {
        return number + value
    }
    
    static func nextDividend(for dividend: Int, divisor: Int) -> Int {
        return dividend/divisor
    }
}
