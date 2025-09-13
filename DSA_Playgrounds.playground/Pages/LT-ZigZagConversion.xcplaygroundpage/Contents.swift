//: [Previous](@previous)

//class Solution {
//    func convert(_ s: String, _ numRows: Int) -> String {
//        
//        guard numRows > 1, numRows < s.count else {
//                   return s
//               }
//
//        var resultArray = Array(repeating: "", count: numRows)
//        var isGoingDirection: Direction = .down
//        var currentRow = 0
//        
//        for char in s {
//            print("For char \(char)")
//            resultArray[currentRow].append(char)
//            print("After Append => \(resultArray)")
//            
//            if currentRow == numRows - 1 && isGoingDirection == .down {
//                isGoingDirection = .up
//                        } else if currentRow == 0 && isGoingDirection == .up {
//                            isGoingDirection = .down
//                        }
//            
//            
//            switch isGoingDirection {
//            case .up:
//                currentRow += -1
//            case .down:
//                currentRow += 1
//            }
//        }
//        print("Final ==> \(resultArray.joined())")
//        return resultArray.joined()
//    }
//    
//    enum Direction {
//        case up
//        case down
//    }
//}

class Solution {
    func convert(_ s: String, _ numRows: Int) -> String {

        // Line 1: Handle base cases where conversion isn't needed.
        // If numRows is 1, or if it's greater than or equal to the string's length,
        // the zigzag pattern is just the original string.
        guard numRows > 1, numRows < s.count else {
            return s
        }

        // Line 2: Create an array of strings to represent each row of the zigzag pattern.
        // Swift's String is a value type, but modifying them in a loop can be inefficient.
        // For this problem size, it's generally fine, but for very large strings,
        // a more performant alternative like an array of characters might be preferred.
        var rows = Array(repeating: "", count: numRows)

        // Line 3: Initialize variables to track the current row and the direction of movement.
        // `currentRow` starts at the top row (index 0).
        // `goingDown` is a boolean flag to control the zigzag movement.
        var currentRow = 0
        var goingDown = false

        // Line 4: Loop through each character of the input string.
        for char in s {
            // Line 5: Append the current character to the string of the current row.
            rows[currentRow].append(char)

            // Line 6: Check if we've hit the top or bottom row.
            // If we are at the top row (index 0) or the bottom row (index `numRows - 1`),
            // we need to reverse the direction of movement.
            if currentRow == 0 || currentRow == numRows - 1 {
                goingDown.toggle()
            }

            // Line 7: Move to the next row based on the current direction.
            // If `goingDown` is true, we move to the next row down.
            // If `goingDown` is false, we move to the next row up.
            currentRow += goingDown ? 1 : -1
        }

        // Line 8: Join all the strings in the `rows` array to form the final result.
        // The `joined()` method concatenates all elements into a single string.
        print("Final rows ==> \(rows.joined())")
        return rows.joined()
    }
}


let s = Solution()
s.convert("ibgkxinzlgbjntwrvtlbmstfemisdnslpavokkovqphekfxiaijmaeugqcbtrvggvdxfnlcdajjnqgvqpedrizaabbtswbbteyatlcwnoiaeovvdbaxlzxlcygwwhzpnzpgkrfahnambyjhzlelkbwobfkxmkmcjbiwupwccwqguznwmrhyufmvkyszigbuhlsdbofdmxjjyyfkroiltuievcffigzrtrvuhcaucldakkldyvprszxnecsmkugendavhapjmukyexdcsutmutzyvumiosmbxmwfpnodhadnxgpsblevegvbahlqcxrzmqebfvgpvjcvpupqfvnlbiodsatuznvldcoixuxudcpvwelbcbodjejdecxgpttuviduecokeefaksdottsfabigfgmxbgryqusuziefojibcnpvjhcjklpstcpuiguydouewzjlkrmmhbkqlmzxzopssgmcnicswxwtwheibqvithyevzevptnicckpknjhmhakogspypzrwxyuycpoxewzgiqtxzcjgetxkmm", 343)
