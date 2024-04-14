class Solution {
    func scoreOfString(_ s: String) -> Int {
        let s = Array(s)
        var sum = 0

        for i in 1..<s.count {
            let ascii1 = Int(s[i-1].asciiValue!)
            let ascii2 = Int(s[i].asciiValue!)
            sum += abs(ascii1-ascii2)
        }

        return sum
    }
}
