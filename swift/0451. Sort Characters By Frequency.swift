class Solution {
    func frequencySort(_ s: String) -> String {
        let map = s.reduce(into:[:]) { $0[$1,default:0] += 1 }
        var freqMap = [Int:[Character]]()
        var maxi = 0
        for (char, freq) in map {
            freqMap[freq, default:[]].append(char)
            maxi = max(maxi, freq)
        }
        var result = [Character]()

        while maxi > 0 {
            if let characters = freqMap[maxi] {
                for char in characters {
                    result += Array(repeating:char, count: maxi)
                }
            }
            maxi -= 1
        }

        return String(result) 
    }
}
