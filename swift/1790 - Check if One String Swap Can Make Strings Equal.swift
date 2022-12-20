// Method 1:
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

// Method 2:
class Solution {
    func areAlmostEqual(_ s1: String, _ s2: String) -> Bool {
        guard s1 != s2 else { return true }
        guard s1.count == s2.count else { return false }
        
        var s1 = Array(s1)
        var s2 = Array(s2)
        var indices = [Int]()

        for i in 0..<s1.count {
            if s1[i] != s2[i] {
                indices.append(i)
            }
        }

        guard indices.count == 2 else { return false }

        s1.swapAt(indices[0], indices[1])

        return s1 == s2
    }
}
