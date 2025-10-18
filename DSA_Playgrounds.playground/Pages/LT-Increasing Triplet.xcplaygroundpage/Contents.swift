//: [Previous](@previous)

class Solution {
    func increasingTriplet(_ nums: [Int]) -> Bool {
        var result = false
        
        var i = Int.max
        var j = Int.max
        
        for n in nums {
            if n <= i {
                i = n
            } else if n <= j {
                j = n
            } else {
                result = true
            }
        }
        
        return result
    }
}


let s = Solution()
let nums = [2,1,5,0,4,6]
print(" <<< Result \(s.increasingTriplet(nums))")

