class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        guard needle.count <= haystack.count else { return -1 }
        var haystack = Array(haystack)
        var needle = Array(needle)
        
        var nIndex = 0
        var hIndex = 0
        
        while hIndex < haystack.count {
            if nIndex == needle.count { return hIndex - nIndex}
            
            guard haystack[hIndex] == needle[nIndex] else {
                hIndex -= nIndex - 1
                nIndex = 0
                continue
            }
            
            nIndex += 1
            hIndex += 1   
        }
        
        return nIndex == needle.count ? hIndex - nIndex : -1
    }
}
