class Solution {
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        guard s1.count <= s2.count else { return false }
        // Get number count for each character in s1, store as 
        // dictionary/map:
        var s1Map = s1.reduce(into: [Character:Int]()) { map, char in 
            map[char, default: 0] += 1
        }

        // Get length of s1, so we know how many characters to look for
        // in s2:
        let n = s1.count

        let s2 = Array(s2)

        // Iterate over s2 in sections of legnth n, comparing
        // the number count of each char to the number count of S1Map.
        // If both maps equal, return true:
        for i in 0...s2.count-n {
            var s2Map = [Character:Int]()
            let s2Section = s2[i..<i+n]
            for char in s2Section {
                s2Map[char, default:0] += 1
            }
            if s2Map == s1Map { return true }
        }

        return false
    }
}
