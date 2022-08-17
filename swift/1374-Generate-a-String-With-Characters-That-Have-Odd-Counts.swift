class Solution {
    func generateTheString(_ n: Int) -> String {
        
        if n % 2 == 0 {
            var string: [Character] = Array(repeating: "a", count: n-1)
            string.append("b")
            return String(string)
        } else {
             let string: [Character] = Array(repeating: "a", count: n)
            return String(string)
        }
        
    }
}
