class Solution {
    func minimumSubarrayLength(_ nums: [Int], _ k: Int) -> Int {
        var mini = 100

        for i in 0..<nums.count {
            var sum = nums[i]
            if sum >= k {
                return 1
            }
            for j in i+1..<nums.count {
                sum |= nums[j]
                if sum >= k {
                    mini = min(mini, j-i+1)
                }
            }
        }
        return mini == 100 ? -1 : mini
    }
}
