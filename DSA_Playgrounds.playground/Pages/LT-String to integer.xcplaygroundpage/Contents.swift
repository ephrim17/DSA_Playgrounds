
import Foundation

//class Solution {
//    
//    func myAtoi(_ s: String) -> Int {
//        
//        let stringWithoutWhiteSpace = s.replacingOccurrences(of: " ", with: "")
//        
//        let startIndex = stringWithoutWhiteSpace.startIndex
//        if stringWithoutWhiteSpace[startIndex].isLetter {
//            return 0
//        }
//        
//        var hasSignedness = ""
//        var numbers = ""
//        
//        for (index, char) in stringWithoutWhiteSpace.enumerated() {
//            if char.isNumber {
//                numbers.append(char)
//            }
//            else if (index == 0 && (char.isPunctuation || char.isMathSymbol)) {
//                hasSignedness.append(char)
//            }
//            else {
//                break;
//            }
//        }
//        
//        var sign = 0
//        print("<<< hasSignedness \(hasSignedness)")
//        
//        if hasSignedness == "-" {
//            sign = -1
//            
//        } else if hasSignedness == "+" {
//            sign = 1
//        }
//        
//        print("<<< sign \(sign)")
//        
//        print("<<< numbers \(numbers)")
//        
//        var onlyNumbers = numbers.filter { char in
//            !char.isPunctuation && !char.isMathSymbol
//        }
//    
//        print("<<< onlyNumbers \(onlyNumbers)")
//        
//        var resultantString = ""
//        
//        for (index,char) in onlyNumbers.enumerated() {
//            if index == 0 || char == "0"{
//                resultantString.append("\(char)")
//            } else if char.isNumber {
//                resultantString.append("\(char)")
//            } else {
//                break;
//            }
//        }
//        
//        if !hasSignedness.isEmpty {
//            resultantString.insert(Character(hasSignedness), at: resultantString.startIndex)
//        }
//        
//        if let result = Int(resultantString){
//            var intResult: Int64 = Int64(result * 10)
//            
//            if sign == 1 && intResult > Int32.max {
//                return Int(Int32.max)
//            } else if sign == -1 && intResult > Int32.max {
//                print("<<< yes \(sign)")
//                // For negative numbers, Int32.min is one larger in magnitude than Int32.max.
//                // The `result` variable is always positive, so we compare it against
//                // Int32.max during the check.
//                return Int(Int32.min)
//            }
//            
//            
//            return result
//        }
//
//        return 0
//    }
//}


class Solution {
    func myAtoi(_ s: String) -> Int {
        let trimmedS = Array(s.trimmingCharacters(in: .whitespaces))
        
        // Line 1: Check for empty string after trimming.
        guard !trimmedS.isEmpty else {
            return 0
        }
        
        var index = 0
        var sign = 1
        var result: Int64 = 0 // Use a 64-bit integer to handle overflow checks.
        
        // Line 2: Check for a sign character.
        if trimmedS[index] == "-" {
            sign = -1
            index += 1
        } else if trimmedS[index] == "+" {
            sign = 1
            index += 1
        }
        
        print("<<< trimmedS \(trimmedS)")
        
        // Line 3: Process digits and build the number.
        while index < trimmedS.count, let digit = Int(String(trimmedS[index])) {
            // Line 4: Append the current digit to the result.
            print("<<< result \(result)")
            result = result * 10 + Int64(digit)
            print("<<< after \(result)")
            
            // Line 5: Check for 32-bit integer overflow before proceeding.
            if sign == 1 && result > Int32.max {
                return Int(Int32.max)
            } else if sign == -1 && result > Int32.max {
                // For negative numbers, Int32.min is one larger in magnitude than Int32.max.
                // The `result` variable is always positive, so we compare it against
                // Int32.max during the check.
                return Int(Int32.min)
            }
            
            index += 1
        }
        
        // Line 6: Return the final result, applying the sign.
        return Int(result) * sign
    }
}


let s = Solution()
let input = "-422aa"
print("<<< Solution:->\(s.myAtoi(input))")
