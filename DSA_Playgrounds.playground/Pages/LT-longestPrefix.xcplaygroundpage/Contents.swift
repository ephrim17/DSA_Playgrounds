//: [Previous](@previous)

class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        // Handle edge cases for empty or single-element arrays
        guard !strs.isEmpty else {
            return ""
        }
        
        //finding Minimum length of array
        let lengths = strs.map { $0.count }
        // Find the minimum value in the new lengths array.
        let minLength = lengths.min()!
        
        var trimmedGuys = [String]()
        for (index, str) in strs.enumerated() {
            var trimmed = str.prefix(minLength)
            trimmedGuys.append(String(trimmed))
        }
        print(trimmedGuys)
        
        guard let firstString = trimmedGuys.first else {
            return ""
        }

        // Use the first string as the reference for comparison
        for (i, char) in firstString.enumerated() {
            // Iterate through the rest of the strings in the array
            
            print("<<< MAIN for \(i)  and \(char)")
            for j in 1..<trimmedGuys.count {
                let currentString = trimmedGuys[j]
                print("<<< currentString \(currentString) and J \(j)")
                // Check for a mismatch or if the current string is shorter
                // than the current prefix being built
                print("<<<currentString[currentString.index(currentString.startIndex, offsetBy: i)] \(currentString[currentString.index(currentString.startIndex, offsetBy: i)])")
                if currentString[currentString.index(currentString.startIndex, offsetBy: i)] != char {
                    // Return the prefix built so far
                    print("<<< enters")
                    print("<<<currentString[currentString.index(currentString.startIndex, offsetBy: i)] \(currentString[currentString.index(currentString.startIndex, offsetBy: i)])")
                    let endIndex = firstString.index(firstString.startIndex, offsetBy: i)
                    return String(firstString[firstString.startIndex..<endIndex])
                }
            }
        }
        
        // If the entire first string was a common prefix, return it
        return firstString
    }
}




let s = Solution()
let input = ["flower","flow","flight"]
print(s.longestCommonPrefix(input))
