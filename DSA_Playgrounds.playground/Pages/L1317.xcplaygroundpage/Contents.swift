//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)


class Solution {
    
    func hasNoZero(_ num: Int) -> Bool {
        return String(num).contains("0") == false
    }
    
    func getNoZeroIntegers(_ n: Int) -> [Int] {
        for a in 1..<n {
            let b = n - a
            
            // Check if both 'a' and 'b' are "no-zero" integers
            if hasNoZero(a) && hasNoZero(b) {
                // Found a valid pair, return it immediately
                return [a, b]
            }
        }
        return []
    }
}

let solution = Solution()
print(solution.getNoZeroIntegers(11))
