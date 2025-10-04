//: [Previous](@previous)

import Foundation

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var maxProfit = 0
        var futureIndex = 0
        
        for (index,currentPrice) in prices.enumerated() {
            futureIndex = index + 1
            if futureIndex <= prices.count - 1 {
                let futurePrice = prices[futureIndex]
                if currentPrice < futurePrice && futurePrice != 0{
                    maxProfit += futurePrice - currentPrice
                }
            }
        }
        return maxProfit
    }
}


let prices = [1, 2, 3, 4, 5]
let s = Solution()
print(s.maxProfit(prices))
