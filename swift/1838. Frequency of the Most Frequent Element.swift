class Solution {
    func maxFrequency(_ nums: [Int], _ k: Int) -> Int {
        let nums = nums.sorted()
        var start = 0
        var end = 0
        var leftover = k
        var coun t = 0

        while end < nums.count {
            if start == end || nums[end-1] == nums[end] {
                end += 1
            } else {
                var diff = abs(nums[end] - nums[end-1])
                diff += abs(nums[end] - nums[end-1]) * (end-1-start)
                if diff <= leftover {
                    leftover -= diff
                    end += 1
                } else {
                    count = max(count, end-start)
                    let diff = abs(nums[end-1] - nums[start])
                    if diff <= k {
                        leftover += diff
                    }
                    start += 1
                }
            }
        }

        count = max(count, end-start)


        return count
    }
}

