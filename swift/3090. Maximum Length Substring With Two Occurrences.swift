class Solution {
    func maximumLengthSubstring(_ s: String) -> Int {
        let s = Array(s)
        var map = [Character: Int]()
        var left = 0
        var maxi = 0

        for right in 0..<s.count {
            map[s[right], default: 0] += 1

            while left <= right && map.values.max()! > 2 {
                map[s[left], default: 0] -= 1
                left += 1
            }

            maxi = max(right-left+1, maxi)
        }
        return maxi
    }
}
