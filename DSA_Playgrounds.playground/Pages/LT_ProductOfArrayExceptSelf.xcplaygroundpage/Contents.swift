//: [Previous](@previous)

import Foundation
class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        let n = nums.count
        var result = Array(repeating: 1, count: n)

        // First pass: Calculate left products
        var prefixProduct = 1
        for i in 0..<n {
            print("for i \(i)")
            result[i] = prefixProduct
            prefixProduct *= nums[i]
        }

        // Second pass: Calculate right products and combine
        var suffixProduct = 1
        for i in (0..<n).reversed() {
            result[i] *= suffixProduct
            suffixProduct *= nums[i]
        }

        return result
    }
}


let s = Solution()
s.productExceptSelf([1,2,3,4])
