class Solution {
    func areOccurrencesEqual(_ s: String) -> Bool {
        var letterCount = [Character: Int]()
        
        for char in s {
            letterCount[char, default:0] += 1
        }
        
        let diffValues = Set(letterCount.values).count
        
        return diffValues == 1
    }
}
