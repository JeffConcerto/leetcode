// Method 1
class Solution {
    func repeatedSubstringPattern(_ s: String) -> Bool {
        guard s.count > 1 else { return false }
        let length = s.count
        
        for window in 1...length / 2 {
            if length % window == 0 {  
                let subString = String(s[s.startIndex..<s.index(s.startIndex, offsetBy: window)])
                var testString = ""
                let multiplier = s.count / window
                for _ in 0..<multiplier {
                    testString += subString
                }
                if s == testString { return true}
            }
        }
        
        return false
    }
}

// Method 2
class Solution {
    func repeatedSubstringPattern(_ s: String) -> Bool {
        guard s.count > 1 else { return false }
        if Set(s).count == 1 { return true }
        if s.count == 2 { return false }
        
        let string = s
        var s = Array(s)
        var firstCharIndex = [Int]()
        
        for i in 1...s.count/2 {
            if s[i] == s[0] && s[i+1] == s[1] {
                firstCharIndex.append(i)
            }
        }
        
        if firstCharIndex.count > s.count / 2 - 1 { return false }
        
        for index in firstCharIndex {
            var tempString = ""
            let subString = String(s[0..<index])
            while tempString.count < s.count {
                tempString += subString
            }
            if tempString == string { return true }
        }
        
        return false
    }
}
