import UIKit

// Leetcode 485 Max consective ones

// Solved using timecomplexity of O(n)

class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var max = 0,count = 0
        for i in 0..<nums.count {
            if(nums[i] == 1){
                count += 1
                max = Swift.max(max,count)
            } else {
                count = 0
            }
        }
        return max
    }
}

