class Solution {
    func minSteps(_ s: String, _ t: String) -> Int {
        var mapT = [Character:Int]()
        for char in t {
            mapT[char, default:0] += 1
        }
        
        var total = 0
        for char in s {
            if let count = mapT[char] {
                if count == 0 {
                    total += 1
                } else {
                    mapT[char] = count - 1
                }
            } else {
                total += 1
            }
        }  

        return total
    }
}
