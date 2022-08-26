class Solution {
    func thousandSeparator(_ n: Int) -> String {
        guard n > 999 else { return String(n) }
        
        var array: [Character] = Array(String(n))
        var result = ""
        var commaCount = 0
        for index in stride(from: array.count - 1, to: -1, by: -1) {
            result = String(array[index]) + result
            commaCount += 1
            
            if commaCount % 3 == 0 && index != 0 {
            result = "." + result
            }
        }
        
        
        return result
    }
}
