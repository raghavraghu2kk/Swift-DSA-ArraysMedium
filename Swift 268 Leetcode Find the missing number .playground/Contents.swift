import UIKit

var greeting = "Hello, playground"

// Find the missing number in an array

func missingNumber(_ arr: [Int], _ n: Int) -> Int{
    var num = 0
    for i in 1...n {
        var flag = 0
        for j in 0..<arr.count{
            if(i == arr[j]){
                flag = 1
                break
            }
        }
        if(flag == 0){
            return i
        }
    }
    return 0
}

missingNumber([1,2,3,4,5,8,7], 8)


// Leetcode 268 - with the time complexity of 0(n^2)

class Solution {
    func missingNumber(_ arr: [Int]) -> Int {
        var n = arr.count + 1
        for i in 0...n-1 {
        var flag = 0
        for j in 0..<arr.count{
            if(i == arr[j]){
                flag = 1
                break
            }
        }
        if(flag == 0){
            return i
        }
        }
        return 0
    }
}

// Leetcode 268 - with time complexity of O(n) using the sum of n numbers

class Solution1 {
    func missingNumber(_ arr: [Int]) -> Int {
        var sum1 = (arr.count*(arr.count+1))/2
        var sum = 0
        for i in 0..<arr.count {
            sum += arr[i]
        }
        return sum1 - sum
    }
}

// Leetcode 268 - with time complexity of O(n) using xor operation

class Solution3 {
    func missingNumber(_ arr: [Int]) -> Int {
        var xor1 = 0, xor2 = 0
        for i in 0..<arr.count{
            xor1 = xor1^arr[i]
            xor2 = xor2^i
        }
        xor2 = xor2^arr.count
        return xor1^xor2
    }
}
