class Solution {
    func reverseParentheses(_ s: String) -> String {
        var s = Array(s)
        var left = [Int]()

        for right in 0..<s.count {
            if s[right] == "(" {
                left.append(right)
            } else if s[right] == ")" {
                var start = left.removeLast() + 1
                var end = right-1
                while start < end {
                    s.swapAt(start,end)
                    start += 1
                    end -= 1
                }
            }
        }
        
        s = s.filter { $0.isLetter }
        return String(s)
    }
}
