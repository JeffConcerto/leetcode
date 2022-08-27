class Solution {
    func makeGood(_ s: String) -> String {
        guard !s.isEmpty else { return s }
        var s = Array(s)
        var index = 0
        
        while index < s.count-1 {
            if s[index].lowercased() == s[index+1].lowercased() {
                if s[index].isLowercase != s[index+1].isLowercase {
                    s.remove(at: index+1)
                    s.remove(at: index)
                    index = 0
                    continue
                }
            }
                
            index += 1
        }
        
        return String(s)
    }
}
