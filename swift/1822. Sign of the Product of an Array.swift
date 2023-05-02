class Solution {
    func arraySign(_ nums: [Int]) -> Int {
        var isNegative = false

        for num in nums {
            guard num != 0 else { return 0 }
            if num < 0 {
                isNegative = isNegative ? false : true
            }
        }

        return isNegative ? -1 : 1
    }
}
