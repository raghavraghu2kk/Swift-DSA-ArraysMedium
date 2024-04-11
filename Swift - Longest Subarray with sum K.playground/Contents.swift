import UIKit

var greeting = "Hello, playground"

// Approach 1 - Finding sum of all the subbaraays - O(n^3)

//First, we will run a loop(say i) that will select every possible starting index of the subarray. The possible starting indices can vary from index 0 to index n-1(n = size of the array).
//Inside the loop, we will run another loop(say j) that will signify the ending index of the subarray. For every subarray starting from the index i, the possible ending index can vary from index i to n-1(n = size of the array).
//After that for each subarray starting from index i and ending at index j (i.e. arr[i….j]), we will run another loop to calculate the sum of all the elements(of that particular subarray).
//If the sum is equal to k, we will consider its length i.e. (j-i+1). Among all such subarrays, we will consider the maximum length by comparing all the lengths.

func longestSubarrayK(_ nums : [Int], _ K : Int) -> Int {
    var length = 0
    for i in 0..<nums.count {
        for j in i..<nums.count{
            var sum = 0
            for k in i...j{
                sum = sum + nums[k]
            }
            if sum == K {
                length = max(length,j-i+1)
            }
        }
    }
    return length
}

print(longestSubarrayK([1,2,3,1,1,1,1], 3))

// Approach 2 - Finding all the subarrays and calculating the sum parallel - O(n^2)

//First, we will run a loop(say i) that will select every possible starting index of the subarray. The possible starting indices can vary from index 0 to index n-1(n = array size).
//Inside the loop, we will run another loop(say j) that will signify the ending index as well as the current element of the subarray. For every subarray starting from the index i, the possible ending index can vary from index i to n-1(n = size of the array).
//Inside loop j, we will add the current element to the sum of the previous subarray i.e. sum = sum + arr[j].
//If the sum is equal to k, we will consider its length i.e. (j-i+1). Among all such subarrays with sum k, we will consider the one with the maximum length by comparing all the lengths.

func longestSubarrayK2(_ nums : [Int], _ K : Int) -> Int {
    var length = 0
    for i in 0..<nums.count {
        var sum = 0
        for j in i..<nums.count{
            sum = sum + nums[j]
            if sum == K {
                length = max(length,j-i+1)
            }
        }
    }
    return length
}

print(longestSubarrayK2([1,2,3,1,1,1,1], 3))

// Approach 4 - Two pointer approach - O(2n)

//First, we will take two pointers: left and right, initially pointing to the index 0.
//The sum is set to a[0] i.e. the first element initially.
//Now we will run a while loop until the right pointer crosses the last index i.e. n-1.
//Inside the loop, we will do the following:
//We will use another while loop and it will run until the sum is lesser or equal to k.
//Inside this second loop, from the sum, we will subtract the element that is pointed by the left pointer and increase the left pointer by 1.
//After this loop gets completed, we will check if the sum is equal to k. If it is, we will compare the length of the current subarray i.e. (right-left+1) with the existing one and consider the maximum one.
//Then we will move forward the right pointer by 1. If the right pointer is pointing to a valid index(< n) after the increment, we will add the element i.e. a[right] to the sum.
//Finally, we will return the maximum length.




