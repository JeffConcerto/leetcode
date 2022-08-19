class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var largestPrefix = strs[0]
        var index = 1
        let length = strs.count
        
        while !largestPrefix.isEmpty && index < length {
            if strs[index].hasPrefix(largestPrefix) {
                index += 1
                continue
            }
            largestPrefix = String(largestPrefix.prefix(largestPrefix.count - 1))
        }
        
        return largestPrefix
        
    }
}
