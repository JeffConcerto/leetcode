// Most recent solution:
class Solution {
    func minWindow(_ s: String, _ t: String) -> String {
        guard s.count >= t.count else { return "" }
        let tMap = t.reduce(into:[:]) { $0[$1, default:0] += 1 }
        let s = Array(s)
        var sMap = [Character:Int]()
        var left = 0
        var start = -1
        var end = 10_0000
        for right in 0..<s.count {
            let char = s[right]
            if tMap[char] != nil {
                sMap[char, default: 0] += 1 
            } 

            while left <= right && tMap.keys == sMap.keys && equalMaps(base: tMap, copy: sMap) {
                if right-left < end-start {
                    start = left
                    end = right
                }
                if let value = sMap[s[left]] {
                    sMap[s[left]] = value == 1 ? nil : value-1
                }
                left += 1
            }
        }

        return start == -1 ? "" : String(s[start...end])
    }

    private func equalMaps(base: [Character:Int], copy: [Character:Int]) -> Bool {
        for (character, freq) in base {
            if copy[character]! < freq { return false }
        } 

        return true
    }
}

// Solution:
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
