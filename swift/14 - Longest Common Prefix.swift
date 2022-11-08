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

// Method 2
class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        
        var index = 0
        var isCommon = true
        
        while isCommon && index <= strs[0].count  {
            var currentPrefix = strs[0].prefix(index + 1)
            
            for i in 1..<strs.count {
                if strs[i].prefix(index + 1) != currentPrefix {
                    isCommon = false
                    break
                }
            }
            
            if isCommon { index += 1 }
        }
        
        return String(strs[0].prefix(index))
    }
}
