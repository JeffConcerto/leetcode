// New Solution:
class Solution {
    func reverseString(_ s: inout [Character]) {
        for i in 0..<s.count/2 {
            s.swapAt(i,s.count-1-i)
        }
    }
}

// Old Solution:
class Solution {
    func reverseString(_ s: inout [Character]) {
        var front = 0
        var back = s.count-1

        while front < back {
            let newBack = s[front]
            s[front] = s[back]
            s[back] = newBack
            front += 1
            back -= 1
        }
        
    }
}
