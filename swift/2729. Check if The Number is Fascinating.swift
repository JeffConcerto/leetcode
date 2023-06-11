class Solution {
    func isFascinating(_ n: Int) -> Bool {
        var set = Set(1...9)
        var nums = [n, n*2, n*3]
        for var num in nums {
            while num > 0 {
                let r = num % 10
                if r == 0 { return false }
                if set.contains(r) {
                    set.remove(r)
                } else {
                    return false
                }
                num /= 10
            }
        }
        


        return set.isEmpty
        
    }
}
