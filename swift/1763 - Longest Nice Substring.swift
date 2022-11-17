// Method 1:
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

// Method 2:
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
        var set: Set<Character> = []
        
        string.forEach { set.insert($0) }
        
        for char in string {
            if !set.contains(Character(char.lowercased())) || !set.contains(Character(char.uppercased())) { return false }
        }
        
        return true
        
    }
       
}

// Method 3: Implementing Huayra007's method in Swift:
class Solution {
    func longestNiceSubstring(_ s: String) -> String {
        guard s.count > 1 else { return ""}
        
        var stringArray = Array(s) 
        var set: Set<Character> = []

        stringArray.forEach { set.insert($0) }
        
        for i in 0..<s.count {
            let char = stringArray[i]
            if set.contains(Character(char.uppercased())) && set.contains(Character(char.lowercased())) { continue }
            
            let sub1 = longestNiceSubstring(String(s.prefix(i)))
            let sub2 = longestNiceSubstring(String(s.suffix(s.count - i - 1)))
            
            return sub1.count >= sub2.count ? sub1 : sub2
        }
        
        return s
        
    }
}
