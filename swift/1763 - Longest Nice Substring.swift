class Solution {
    func longestNiceSubstring(_ s: String) -> String {
        var lowerSet: Set<Character> = []
        var upperSet: Set<Character> = []
        
        var s = Array(s)
        var result = ""
        
        for i in 0..<s.count {
            var tempString = "\(s[i])"
            for j in i + 1..<s.count {
                tempString += "\(s[j])"
                if isNice(tempString) {
                    if tempString.count > result.count {
                        result = tempString
                    }
                }
            }
        }
        return result
    }
    
    private func isNice(_ string: String) -> Bool {
        var lowerSet: Set<Character> = []
        var upperSet: Set<Character> = []
        
        for char in string {
            if char.isLowercase {
                lowerSet.insert(char)
            } else {
                upperSet.insert(char)
            }
        }
        
        for char in string {
            if !lowerSet.contains(Character(char.lowercased())) || !upperSet.contains(Character(char.uppercased())) { return false }
        }
        
        return true
        
    }
       
}
