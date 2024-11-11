//
//  MathsViewController.swift
//  DSA_GFG_Practice
//
//  Created by Vinayaka S Yattinahalli on 11/11/24.
//

/*
 DSA questions on Mathematics
 */

import UIKit

class MathsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(countDigits(digit: 909))
        print(isPalindromeNumber(number: 123))
        print(factorial(number: 6))
        print(trailingZeroesInFactorial(n: 25))
    }

    // Time: O(n)
    func countDigits(digit: Int) -> Int{
        var res = 0
        var digit = digit
        while (digit > 0) {
            digit = digit / 10
            res += 1
        }
        return res
    }
    
    // Time: O(n)
    func isPalindromeNumber(number: Int) -> Bool{
        var temp = number
        var rev = 0
        var lastDigit = 0
        while temp > 0 {
            lastDigit = temp % 10
            rev = rev * 10 + lastDigit
            temp = temp / 10
        }
        return (rev == number)
    }
    
    // Time: O(n), Space: O(n)
    func factorial(number: Int) -> Int {
        if number == 0 {
            return 1
        }
        return number * factorial(number: number - 1)
    }
    
    // Time: O(log n)
    func trailingZeroesInFactorial(n: Int) -> Int {
        var res = 0
        var i = 5
        while i <= n {
            res += n / i
            i *= 5
        }
        return res
    }
    
}

