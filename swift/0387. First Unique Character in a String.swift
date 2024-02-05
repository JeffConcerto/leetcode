class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var map = s.reduce(into:[:]) { $0[$1,default:0] += 1 }
        var i = 0
        for char in s {
            if map[char]! == 1 { return i }
            i += 1
        }

        return -1
    }
}
