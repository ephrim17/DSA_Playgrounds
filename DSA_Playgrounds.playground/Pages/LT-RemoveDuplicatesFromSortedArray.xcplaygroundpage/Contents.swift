//: [Previous](@previous)

import Foundation

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        
        var result = [Int]()
        var numMap : [Int:Int] = [:]
        
        for num in nums {
            if numMap[num] != num {
                result.append(num)
            }
            numMap[num] = num
        }
        nums = result
        print(nums)
        return result.count
    }
}

let s = Solution()
var input = [1,1,2]
s.removeDuplicates(&input)

print(s.removeDuplicates(&input))
