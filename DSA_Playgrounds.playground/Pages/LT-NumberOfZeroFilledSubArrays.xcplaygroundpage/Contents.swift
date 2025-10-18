//: [Previous](@previous)

import Foundation

class Solution {
    func zeroFilledSubarray(_ nums: [Int]) -> Int {
        var zerosCount = 0
        var continuousZeroCount = 0
        for (index, item) in nums.enumerated() {
            if item == 0  {
                zerosCount = 1 + continuousZeroCount + zerosCount
                continuousZeroCount += 1
            } else{
                continuousZeroCount = 0
            }
        }
        return zerosCount
    }
}


let s = Solution()
let input = [0,0,0,2,0,0]
print(s.zeroFilledSubarray(input))
