import UIKit

var greeting = "Hello, playground"

class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var max = nums[0]
        var sum = nums[0]
        for i in 1..<nums.count{
            if(sum <= 0){
                sum = 0
            }
            sum = sum + nums[i]
            max = Swift.max(sum,max)
        }
        return max
    }
}
