class Solution {
    func removeDigit(_ number: String, _ digit: Character) -> String {
        var number = Array(number)
        var lastIndex = -1
        
        for i in 0..<number.count {
            if number[i] == digit { 
                if i < number.count - 1 {
                    if number[i+1] > number[i] { lastIndex = i; break}
                }
                lastIndex = i
            }
        }
        
        number.remove(at: lastIndex)
        return String(number)
    }
}
