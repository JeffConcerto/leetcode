class Solution {
    func minWindow(_ s: String, _ t: String) -> String {
        let tMap = t.reduce(into:[:]) { $0[$1, default:0] += 1 }
        var minString = s + s
        let s = Array(s)
        var left = 0 
        var tMapCheck = tMap
        var tMapTrack = tMap

        for right in 0..<s.count {
            if tMap[s[right]] != nil {
                // T contains the character:

                if let count = tMapTrack[s[right]] {
                    tMapTrack[s[right]] = count-1
                    if count <= 1 {
                        tMapCheck[s[right]] = nil
                    }
                }
            }

            while tMapCheck.isEmpty {  
                if let count = tMapTrack[s[left]] {
                    tMapTrack[s[left]] = count+1
                    if count == 0 {
                        tMapCheck[s[left]] = 1
                    }
                }

                if !tMapCheck.isEmpty {
                    if minString.count > (right-left+1) {
                    minString = String(s[max(0,left)...right])
                    }
                }

                left += 1
            }
        }

        return minString.count > s.count ? "" : minString
    }
}
