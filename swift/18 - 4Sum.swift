class Solution {
    func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
        var nums = nums.sorted()
        var result = [[Int]]()

        for (i, num) in nums.enumerated() {
            if i > 0 && nums[i] == nums[i-1] { continue }
            var sum = 0
            var count = result.count
            for j in i+1..<nums.count {
                if count < result.count && nums[j] == nums[j-1] { continue }
                sum = nums[j] + nums[i]
                var left = j+1
                var right = nums.count-1
                while left < right {
                    let total = sum + nums[left] + nums[right]
                    if total == target {
                        result.append([num,nums[j],nums[left],nums[right]])
                        left += 1
                        while left < right && nums[left] == nums[left-1] {
                            left += 1
                        }
                    } else if total < target {
                        left += 1
                    } else {
                        right -= 1
                    }
                }
            }
        }

        return result
        
    }
}
