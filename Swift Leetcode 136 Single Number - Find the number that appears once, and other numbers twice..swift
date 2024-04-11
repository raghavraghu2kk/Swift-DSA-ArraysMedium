//
//  Swift Leetcode 136 Single Number - Find the number that appears once, and other numbers twice..swift
//  
//
//  Created by Raghavendra Mirajkar on 05/04/24.
//

import Foundation

func singleNumber(_ nums: [Int]) -> Int {
    var xor = 0
    for num in nums {
        xor = xor^num
    }
    return xor
}

//Works in the time complexity of O(n)


