class Solution {
    func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
        let g = g.sorted()
        let s = s.sorted()

        var i = 0
        var j = 0

        while i < g.count && j < s.count {
            if s[j] >= g[i] {
                i += 1 
            }
            j += 1
        }

        return i
    }
}
