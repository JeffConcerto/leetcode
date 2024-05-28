class Solution {
    func equalSubstring(_ s: String, _ t: String, _ maxCost: Int) -> Int {
        let s = Array(s)
        let t = Array(t)

        var left = 0
        var cost = 0
        var maxLength = 0
        for right in 0..<t.count {
            let sVal = Int(s[right].asciiValue!)
            let tVal = Int(t[right].asciiValue!)
            let difference = abs(sVal - tVal)
            cost += difference

            while cost > maxCost {
                let sVal = Int(s[left].asciiValue!)
                let tVal = Int(t[left].asciiValue!)
                let difference = abs(sVal - tVal)
                cost -= difference
                left += 1
            }

            maxLength = max(maxLength, right-left+1)
        }
        return maxLength
    }
}
