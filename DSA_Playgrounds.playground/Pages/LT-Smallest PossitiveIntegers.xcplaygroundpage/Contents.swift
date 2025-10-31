class Solution {
    func firstMissingPositive(_ nums: [Int]) -> Int {
        let n = nums.count
        var i = 0
        var tempNums = nums

        // Phase 1: Cyclic Sort (rearrange elements)
        while i < n {
            let num = tempNums[i]
            // Check if the number is in the valid range [1, n]
            // and if it is not already in its correct position.
            let correctIndex = num - 1
            print("<<< CI = \(correctIndex) | For num = \(num)")
            if num > 0 && num <= n && tempNums[correctIndex] != num {
                // Swap the element to its correct place.
                print("Swap")
                tempNums.swapAt(i, correctIndex)
            } else {
                // If the conditions aren't met, move to the next element.
                i += 1
            }
        }
        
        print(tempNums)

        // Phase 2: Find the first missing positive
        // After rearrangement, the first index i where nums[i] != i+1
        // indicates that i+1 is the missing positive.
        for i in 0..<n {
            print("<<< nums[i] \(tempNums[i]) | i + 1 \(i + 1)")
            if tempNums[i] != i + 1 {
                print("<<<ENTRY")
                return i + 1
            }
        }

        // If all numbers from 1 to n are in their correct places,
        // the smallest missing positive is n + 1.
        return n + 1
    }
}

// Example usage:
var example1 = [3, 4, -1, 1]
print(Solution().firstMissingPositive(example1)) // Output: 2

var example2 = [1, 2, 0]
//print(Solution().firstMissingPositive(example2)) // Output: 3

var example3 = [7, 8, 9, 11, 12]
//print(Solution().firstMissingPositive(example3)) // Output: 1
