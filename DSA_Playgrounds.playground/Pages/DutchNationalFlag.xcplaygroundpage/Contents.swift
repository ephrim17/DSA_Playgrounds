

var givenArray = [ 0, 1, 2, 1, 0, 1, 2, 0, 1, 2]


var start = 0
var mid = 0
var end = givenArray.count - 1
    

while mid <= end {
    if givenArray[mid] == 0 {
        givenArray.swapAt(start, mid)
        start += 1
        mid += 1
    } else if givenArray[mid] == 2 {
        givenArray.swapAt(mid, end)
        print(givenArray)
        end -= 1
    } else {
        mid += 1
    }
}

print(givenArray)
