class Solution {
    func minimumCost(_ nums: [Int]) -> Int {
        var min1 = Int.max
        var min2 = Int.max
        for i in 1..<nums.count {
            let num = nums[i]
            if num <= min1 {
                min2 = min1
                min1 = num
            } else if num < min2 {
                min2 = num
            }
        }

        return min1 + min2 + nums[0]
    }
}
