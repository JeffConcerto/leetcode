class Solution {
    func countPairs(_ nums: [Int], _ target: Int) -> Int {
        let nums = nums.sorted(by:<)
        var count = 0

        for i in 0..<nums.count {
            for j in i+1..<nums.count {
                if nums[i] + nums[j] < target {
                    count += 1
                } else {
                    break
                }
            }
        }

        return count
    }
}
