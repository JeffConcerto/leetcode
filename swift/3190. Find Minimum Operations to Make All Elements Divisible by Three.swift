class Solution {
    func minimumOperations(_ nums: [Int]) -> Int {
        var ops = 0
        for var num in nums {
            if num % 3 == 0 { continue }
            var opsUp = 0
            var originalNum = num
            while num % 3 != 0 {
                opsUp += 1
                num += 1
            }
            var opsDown = 0
            num = originalNum
            while num % 3 != 0 {
                opsDown += 1
                num -= 1
            }
            ops += min(opsDown,opsUp)
        }  

        return ops
    }
}
