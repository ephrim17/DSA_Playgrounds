//: [Previous](@previous)

let input = "pwwkew"


class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        
        let strArray = Array(s)
        print(strArray)
        
        var startIndex = 0
        var strMap : [String:Int] = [:]
        var lastFound = ""
        
        
        for (index, item) in strArray.enumerated() {
            var itemString = "\(item)"
            
            if let foundIndex = strMap[itemString] {
                startIndex = foundIndex + 1
            }
            
            print("Current String")
            var cStr = strArray[startIndex...index]
            print(cStr)
            
            //update Mapping
            strMap[itemString] = index
            
            if cStr.count > lastFound.count {
                lastFound = String(cStr)
                print("<<< lastFound \(lastFound)")
            }
        }
        return lastFound.count
    }
}

let s = Solution()
print("<<< FINAL output -> \(s.lengthOfLongestSubstring(input))")
