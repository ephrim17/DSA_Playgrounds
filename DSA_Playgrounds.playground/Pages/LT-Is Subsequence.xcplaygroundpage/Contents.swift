//: [Previous](@previous)

import Foundation

class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        var sPointer = 0
        var tPointer = 0
        
        let sChars = Array(s)
        let tChars = Array(t)
        
        while sPointer < sChars.count && tPointer < tChars.count {
            if sChars[sPointer] == tChars[tPointer] {
                sPointer += 1
            }
            tPointer += 1
        }
        return sPointer == sChars.count
    }
}


let s = Solution()
let input =  "ahbgdc"
let str = "abc"
print(s.isSubsequence(str, input))
