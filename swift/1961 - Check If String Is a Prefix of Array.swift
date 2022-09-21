class Solution {
    func isPrefixString(_ s: String, _ words: [String]) -> Bool {        
        var totalString = ""
 
        for word in words {
            totalString += word
            if s.count > totalString.count { continue }
            return s == totalString
        }
        
        return false
    }
}
