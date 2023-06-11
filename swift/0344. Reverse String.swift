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
