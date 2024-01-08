class Solution {
    func missingInteger(_ nums: [Int]) -> Int {
        var seen = Set([nums[0]])
        var sum = nums[0]
        var stop = false
        for i in 1..<nums.count {
            if !stop && nums[i]-1 == nums[i-1] {
                sum += nums[i]
            } else {
                stop = true
            }
            seen.insert(nums[i])
        }

        while seen.contains(sum) {
            sum += 1
        }

        return sum
    }
}
