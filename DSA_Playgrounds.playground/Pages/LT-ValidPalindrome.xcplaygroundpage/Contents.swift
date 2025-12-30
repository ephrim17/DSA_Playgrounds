//: [Previous](@previous)

import Foundation

class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var result = false
        var givenString = s
        var onlyCharacters = givenString.replacingOccurrences(of: " ", with: "")
        onlyCharacters = onlyCharacters.filter { $0.isLetter || $0.isNumber }
        onlyCharacters = onlyCharacters.lowercased()
        
        var charArray = Array(onlyCharacters)
        let reversedCharacters = onlyCharacters.reversed()
        let charArrayReversed: [Character] = Array(reversedCharacters)
        print(charArray)
        print(charArrayReversed)
        result = charArray == charArrayReversed
        return result
    }
}

let s = Solution()
let input = "0P" //"`l;`` 1o1 ??;l`" //"race a car"
print(s.isPalindrome(input))
