//: [Previous](@previous)

import Foundation

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        
        var currentProfit = 0
        var buyingPrice = prices[0]
        var maxProfit = 0
        
        for currentPrice in prices {
            buyingPrice =  min(buyingPrice, currentPrice)
            currentProfit = max(currentPrice - buyingPrice, currentProfit)
            
//            if buyingPrice > currentPrice{
//                buyingPrice = currentPrice
//            } else {
//                currentProfit = currentPrice - buyingPrice
//                if currentProfit > maxProfit {
//                    maxProfit = currentProfit
//                }
//            }
        }
        return currentProfit
    }
}

let input = [7,6,4,3,1]

let s = Solution()
print("<<< FINAL \(s.maxProfit(input))")
