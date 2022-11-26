// Method 1 - O(N^2):
class Solution {
    func maximumDifference(_ nums: [Int]) -> Int {
        var maxDiff = -1
        for i in 0..<nums.count {
            for j in i + 1..<nums.count {
                if nums[i] >= nums[j] { continue }
                maxDiff = max(maxDiff, nums[j] - nums[i])
            }
        }

        
        return maxDiff
    }
}

// Method 2 - O(N):

class Solution {
    func maximumDifference(_ nums: [Int]) -> Int {
        var maxNum = nums.last!
        var maxDiff = -1
        
        for i in 0..<nums.count {
            if maxNum == nums[nums.count - i - 1] { continue }
            maxDiff = max(maxDiff, maxNum - nums[nums.count - i - 1])
            maxNum = max(maxNum, nums[nums.count - i - 1])
        }
        
        return maxDiff
    }
}

// Method 3 - Using Stride - Should Be O(N), but Stide is slow:
class Solution {
    func maximumDifference(_ nums: [Int]) -> Int {
        var maxNum = nums.last!
        var maxDiff = -1
        
        for i in stride(from: nums.count-2, to: -1, by: -1) {
            if maxNum == nums[i] { continue }
            maxDiff = max(maxDiff, maxNum - nums[i])
            maxNum = max(maxNum, nums[i])
        }
        
        
        return maxDiff
    }
}
