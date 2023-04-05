class Solution {
    func findTheLongestBalancedSubstring(_ s: String) -> Int {
        var s = Array(s)
        var zeroCount = s[0] == "0" ? 1 : 0
        var oneCount = 0
        var maxString = 0

        for i in 1..<s.count {
            // if noo preceeding zeros and current index is 1, 
            // string is not balanced, continue:
            if s[i] == "1" && zeroCount == 0 { continue }

            // If start of a new substrng, calculate length of substring prior to this point and reset:
            if s[i-1] != s[i] && s[i] == "0" {
                maxString = max(maxString,min(zeroCount,oneCount)*2)
                zeroCount = 0
                oneCount = 0
            }

            if s[i] == "0" {
                 zeroCount += 1
            } else {
                oneCount += 1
            }
        }
         
        return max(maxString,min(zeroCount,oneCount)*2)

    }
}
