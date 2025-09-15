//: [Previous](@previous)

import Foundation

class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var result = 0
        
        var candidate = 0
        var count = 0
        
        for num in nums {
            
            if count == 0 {
                candidate = num
            }
            
            if num == candidate {
                count += 1
            } else {
                count -= 1
            }
            
        }
        
        print("WINNER-> \(candidate)")
        return candidate
    }
}


let input = [3,3,4]

let s = Solution()
s.majorityElement(input)
