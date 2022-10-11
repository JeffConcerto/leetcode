class Solution {
    func rearrangeCharacters(_ s: String, _ target: String) -> Int {
        var charMap = [Character: Int]()
        var targetMap = [Character: Int]()
        
        for char in s {
            charMap[char, default: 0] += 1
        }
        
        var minCopies = Int.max
        
        for char in target {
            targetMap[char, default: 0] += 1
        }
        
        for char in targetMap.keys {
            if let wordCount = targetMap[char] {
                if let totalCount = charMap[char] {
                    minCopies = min(minCopies, totalCount / wordCount)
                } else {
                    return 0
                }
            }
        }
        
        return minCopies
    }
}
