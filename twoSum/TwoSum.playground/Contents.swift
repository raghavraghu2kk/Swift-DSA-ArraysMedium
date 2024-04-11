import UIKit

var greeting = "Hello, playground"


// Two Sum problem
// Approach 1
// Using two for looops with the time complexity of - O(n^2)

func twoSum(_ arr : [Int], _ sum : Int) -> Bool {
    for i in 0..<arr.count {
        for j in i+1..<arr.count {
            if(arr[i] + arr[j] == sum){
                print(i,j)
                return true
            }
        }
    }
    return false
}

twoSum([1,2,3,4,5,6,7], 3)

// Two sum problem
// Approach 2
// Using two pointer approach with left<right where left and right are first and laast index with the time compleity of - O(N) with only one iteration.


func TwoSum(_ nums : [Int] , _ sum : Int) -> Bool {
    var left = 0
    var right = nums.count-1
    var arr = nums
    arr.sort()
    while(left<right){
        var res = arr[left] + arr[right]
        if(res == sum){
            print(arr[left],arr[right])
            return true
        } else if(res < sum){
            left = left+1
        } else {
            right = right - 1
        }
    }
    return false
}

TwoSum([12,23,5,78,32,4], 36)


// TWo sum problem
// APPROACH 3
// Using the dictionary


