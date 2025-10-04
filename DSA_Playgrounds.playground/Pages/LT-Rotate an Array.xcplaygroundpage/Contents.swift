//: [Previous](@previous)

import Foundation

class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        let n = nums.count
        guard n > 1 else { return }
        
        let k = k % n
        
        // Split the array into two slices and concatenate them
        let rightSlice = nums.suffix(k)
        print(rightSlice)
        let leftSlice = nums.prefix(n - k)
        
        // Replace the contents of the original array
        nums = Array(rightSlice + leftSlice)
    }
}


let s = Solution()
var input = [-1,-100,3,99]
let k = 2
s.rotate(&input, k)
