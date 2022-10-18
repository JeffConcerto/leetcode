class Solution {
    func checkDistances(_ s: String, _ distance: [Int]) -> Bool {
        // var s = Array(s)
        let alphabet = Array("abcdefghijklmnopqrstuvwxyz")
        var alphaMap = [Character: Int]()
        
        for (index, char) in alphabet.enumerated() {
            alphaMap[char] = index
        }
        
        var distanceMap = [Character: Int]()
        
        for (index, char) in s.enumerated() {
            if let firstIndex = distanceMap[char] {
                if index - firstIndex - 1 != distance[alphaMap[char]!] ?? 0 { return false } 
            } else {
                distanceMap[char] = index 
            }
        }
        
        return true
    }
}
