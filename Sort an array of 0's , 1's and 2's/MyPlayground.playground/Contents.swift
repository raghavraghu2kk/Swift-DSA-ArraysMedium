import UIKit

var greeting = "Hello, playground"

//Input:
// nums = [2,0,2,1,1,0]
// Output : [0,0,1,1,2,2]

// Sort an array of 0's 1's and 2's
// Approach 1
// Sort the array

// Approach 2
// Count the number of 1's 2's and 0's
// Place them in the array
// Time complexity - O(2N)

// Approach 3
// Using three pointer method

func sortArray(_ arr : [Int]) -> [Int] {
    var temp = arr
    var low = 0
    var mid = 0
    var high = arr.count - 1
    while(mid <= high){
        if(temp[mid] == 0){
            (temp[low],temp[mid]) = (temp[mid],temp[low])
            mid += 1
            low += 1
        } else if(temp[mid] == 1){
            mid += 1
        } else {
            (temp[mid],temp[high]) = (temp[high],temp[mid])
            high -= 1
        }
    }
    return temp
}

sortArray([0,2,1,0,0,1,2,0,1,2])

