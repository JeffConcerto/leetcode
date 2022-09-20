class Solution {
    func minTimeToType(_ word: String) -> Int {
        var word = Array(word)
        var seconds = word.count
        word.insert("a", at: 0)
    
        for i in 1..<word.count {
            let minNum = min(word[i-1].asciiValue! - 96, word[i].asciiValue! - 96)
            let maxNum = max(word[i-1].asciiValue! - 96, word[i].asciiValue! - 96)
            
            let clockwise = maxNum - minNum
            let counter = minNum + 26 - maxNum
            
            seconds += min(Int(clockwise), Int(counter))
        }
        
        return seconds
    }
}
