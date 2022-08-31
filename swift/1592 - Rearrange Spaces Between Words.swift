class Solution {
    func reorderSpaces(_ text: String) -> String {
        let spaces = text.filter { $0 == " "}.count
        guard spaces > 0 else { return text }
        
        let words = text.components(separatedBy: .whitespacesAndNewlines).filter {!$0.isEmpty}
        let spacesBetweenWords = words.count > 1 ? spaces / (words.count - 1) : 0
        let remainder = words.count > 1 ? spaces % (words.count - 1) : spaces
        
        var result = ""
        for index in 0..<words.count - 1 {
            result += words[index]
            for _ in 0..<spacesBetweenWords {
                result += " "
            }
        }
        
        result += words.last!
        
        for _ in 0..<remainder {
            result += " "
        }
        
        return result
    }
}
