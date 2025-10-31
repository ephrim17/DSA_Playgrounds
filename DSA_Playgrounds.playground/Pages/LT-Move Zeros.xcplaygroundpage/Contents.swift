//: [Previous](@previous)

import Foundation

class Solution {
    
    func moveZeroes(_ nums: inout [Int]) {
        
        var zeroPointer = 0
        
        for currentPointer in 0..<nums.count {
            print("<<< current Itr \(nums[currentPointer])")
            if nums[currentPointer] != 0 {
                print("<<< if \(nums[currentPointer])")
                if zeroPointer != currentPointer {
                    nums.swapAt(zeroPointer, currentPointer)
                }
                print("<<< After swap NUMS \(nums)")
                zeroPointer += 1
            }
        }
        print("Filtered")
        print(nums)
    }
}


let s = Solution()
var input = [0,1,0,3,12]
print("ready")
s.moveZeroes(&input)
