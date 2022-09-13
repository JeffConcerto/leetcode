class Solution {
    func replaceDigits(_ s: String) -> String {
        var s = Array(s)
        
        for index in 0..<s.count {
            if index % 2 == 0 { continue }
            
            s[index] = shift(s[index-1], Int(String(s[index]))!)
        }
        
        return String(s)
    }
    
    func shift(_ char: Character, _ amount: Int) -> Character {
        let alphabet = Array("abcdefghijklmnopqrstuvwxyz")
        
        let index = alphabet.firstIndex(of: char)!
        
        return alphabet[(index + amount) % 26]
    }
}
