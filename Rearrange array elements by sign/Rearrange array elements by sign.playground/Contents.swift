import UIKit

var greeting = "Hello, playground"

//2149. Rearrange Array Elements by Sign

//You are given a 0-indexed integer array nums of even length consisting of an equal number of positive and negative integers.
//
//You should return the array of nums such that the the array follows the given conditions:
//
//Every consecutive pair of integers have opposite signs.
//For all integers with the same sign, the order in which they were present in nums is preserved.
//The rearranged array begins with a positive integer.
//Return the modified array after rearranging the elements to satisfy the aforementioned conditions.
//
// 
//
//Example 1:
//
//Input: nums = [3,1,-2,-5,2,-4]
//Output: [3,-2,1,-5,2,-4]
//Explanation:
//The positive integers in nums are [3,1,2]. The negative integers are [-2,-5,-4].
//The only possible way to rearrange them such that they satisfy all conditions is [3,-2,1,-5,2,-4].
//Other ways such as [1,-2,2,-5,3,-4], [3,1,2,-2,-5,-4], [-2,3,-5,1,-4,2] are incorrect because they do not satisfy one or more conditions.
//Example 2:
//
//Input: nums = [-1,1]
//Output: [1,-1]
//Explanation:
//1 is the only positive integer and -1 the only negative integer in nums.
//So nums is rearranged to [1,-1].

class Solution {
    func rearrangeArray(_ nums: [Int]) -> [Int] {
        var arr = nums
        var pos = 0
        var neg = 1
        for num in nums {
            if(num > 0){
                arr[pos] = num
                pos += 2
            } else {
                arr[neg] = num
                neg += 2
            }
        }
        return arr
    }
}

class Solution1 {
    func rearrangeArray(_ nums: [Int]) -> [Int] {
        var arr : [Int] = []
        var a1 : [Int] = []
        var a2 : [Int] = []
        for num in nums {
            if(num > 0){
                a1.append(num)
            } else {
                a2.append(num)
            }
        }
        for i in 0..<nums.count/2{
            arr.append(a1[i])
            arr.append(a2[i])
        }
        return arr
    }
}
