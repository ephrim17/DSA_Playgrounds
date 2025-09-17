//: [Previous](@previous)

import Foundation

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        
        var currentProfit = 0
        var buyingPrice = prices[0]
        var maxProfit = 0
        
        for currentPrice in prices {
            if buyingPrice > currentPrice{
                buyingPrice = currentPrice
            } else {
                currentProfit = currentPrice - buyingPrice
                if currentProfit > maxProfit {
                    maxProfit = currentProfit
                }
            }
        }
        return maxProfit
    }
}

let input = [7,1,5,3,6,4]

let s = Solution()
print("<<< FINAL \(s.maxProfit(input))")
