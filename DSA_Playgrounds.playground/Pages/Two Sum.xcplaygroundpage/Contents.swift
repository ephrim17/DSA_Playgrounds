//: [Previous](@previous)

//https://leetcode.com/problems/two-sum/


// MY Approach
class Solution {
    
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        let givenArray = nums
        let givenTarget = target
        for (index,n) in nums.enumerated() {
            var b = givenTarget - n
            if nums.contains(b) {
                if let firstIndex = nums.firstIndex(of: b), firstIndex != index {
                    return [firstIndex, index]
                }
            }
        }
        return []
    }
}

// Actual Answer
/*
 class Solution {
     /// Finds the indices of two numbers in an array that add up to a target.
     ///
     /// - Parameters:
     ///   - nums: An array of integers.
     ///   - target: The integer sum to find.
     /// - Returns: An array of two integers representing the indices of the numbers.
     func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
         // Use a dictionary to store number -> index mappings
         var numMap = [Int: Int]()
         
         // Iterate through the array using `enumerated()` to get both index and value
         for (i, num) in nums.enumerated() {
             let complement = target - num
             
             // Check if the complement exists in our dictionary
             if let complementIndex = numMap[complement] {
                 // If found, we've located the pair. Return the two indices.
                 return [complementIndex, i]
             }
             
             // If the complement is not in the map, store the current number and its index
             numMap[num] = i
         }
         
         // The problem statement guarantees exactly one solution,
         // so this part of the code is technically unreachable.
         return []
     }
 }*/

// Example usage:
let solution = Solution()
let nums = [0,4,3,0]
let target = 0

let result = solution.twoSum(nums, target)
print("result \(result)")

