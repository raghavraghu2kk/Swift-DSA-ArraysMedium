//
//  Swift - Longest Subarray with sum K.swift
//  
//
//  Created by Raghavendra Mirajkar on 05/04/24.
//

import Foundation

// Approach 1 - Finding sum of all the subbaraays

//First, we will run a loop(say i) that will select every possible starting index of the subarray. The possible starting indices can vary from index 0 to index n-1(n = size of the array).
//Inside the loop, we will run another loop(say j) that will signify the ending index of the subarray. For every subarray starting from the index i, the possible ending index can vary from index i to n-1(n = size of the array).
//After that for each subarray starting from index i and ending at index j (i.e. arr[i….j]), we will run another loop to calculate the sum of all the elements(of that particular subarray).
//If the sum is equal to k, we will consider its length i.e. (j-i+1). Among all such subarrays, we will consider the maximum length by comparing all the lengths.

func longestSubarrayK(_ nums : [Int], _ K : Int) -> Int {
    var length = 0
    for i in 0..<nums.count {
        var sum = 0
        for j in i..<nums.count{
            sum = sum + nums[k]
            if sum == K {
                length = max(length,j-i+1)
            }
        }
    }
    return length
}

print(longestSubarrayK([1,2,3,1,1,1,1], 3))
