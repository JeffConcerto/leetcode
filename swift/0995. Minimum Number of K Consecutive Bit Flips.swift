class Solution {
    func minKBitFlips(_ nums: [Int], _ k: Int) -> Int {
        var nums = nums
        var left = 0
        var flips = 0
        while (left + k-1) < nums.count {
            if nums[left] == 1 { 
                left += 1
                continue 
            } else {
                for i in left..<left+k {
                    nums[i] = nums[i] == 0 ? 1 :0
                }
                left += 1
                flips += 1
            }
        }

        for i in nums.count-k..<nums.count {
            if nums[i] == 0 {
                return -1
            }
        }

        return flips
    }
}
