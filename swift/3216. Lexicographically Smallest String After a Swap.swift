class Solution {
    func getSmallestString(_ s: String) -> String {
        var s = Array(s)
        for i in 0..<s.count-1 {
            if (s[i].wholeNumberValue! % 2) == (s[i+1].wholeNumberValue! % 2) && s[i] > s[i+1] {
                s.swapAt(i, i+1)
                break
            }
        }
        return String(s)
    }
}
