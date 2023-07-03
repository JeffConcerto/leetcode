class Solution {
    func longestAlternatingSubarray(_ nums: [Int], _ threshold: Int) -> Int {

        var left = -1
        var right = -1
        var longest = -1
        for (i, num) in nums.enumerated() {
            // Get L, Must be Even NUM:
            if left == -1 {
                if num % 2 == 0 && num <= threshold {
                    left = i
                    right = i
                }
            } else {
                // Already have a valid L, need to keep
                // odd/even going:
                if (num % 2) == (nums[i-1] % 2) || num > threshold {
                    longest = max(longest, right-left)
                    if num % 2 == 0 && num <= threshold {
                        left = i
                        right = i
                    } else {
                        left = -1
                        right = -1
                    }
                } else {
                    right = i
                }
            }
        }

        if left != -1 {
            longest = max(longest,right-left)
        }
        
        return longest+1
    }
}
