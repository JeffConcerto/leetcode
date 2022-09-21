class Solution {
    func numOfStrings(_ patterns: [String], _ word: String) -> Int {
        var count = 0
        
        for pattern in patterns {
            count += word.contains(pattern) ? 1 : 0
        }
        
        return count
    }
}
