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


let input = [2,2,1,1,1,2,2]

let s = Solution()
s.majorityElement(input)

func majorityElement(input: [Int]) {
    
    var mjCount = 0
    var winner = 0
    var current = input[0]
    
    for item in input {
        if item == current {
            mjCount += 1
            winner = item
        }
        current = item
    }
    print("mjCount \(mjCount) and winner \(winner)")
}

majorityElement(input: input)
