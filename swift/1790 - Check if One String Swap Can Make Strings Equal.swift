class Solution {
    func areAlmostEqual(_ s1: String, _ s2: String) -> Bool {
        guard s1 != s2 else { return true }
        
        let s1 = Array(s1), s2 = Array(s2)
        var s1Map = [Character: Int](), s2Map = [Character: Int]()
        var misMatches = 0

        
        for index in 0..<s1.count {
            if s1[index] != s2[index] {
                if !s1.contains(s2[index]) || !s2.contains(s1[index]) { return false }
                misMatches += 1
                if misMatches > 2 { return false } }
            s1Map[s1[index], default: 0] += 1
            s2Map[s2[index], default: 0] += 1
        }
        
        return s1Map == s2Map
    }
}
