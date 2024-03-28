class Solution {
    func maxSubarrayLength(_ nums: [Int], _ k: Int) -> Int {
        var map = [Int:Int]()

        var left = 0
        var length = 0
        var maxi = 0 

        for right in 0..<nums.count {
            map[nums[right], default:0] += 1
            maxi = max(maxi, map[nums[right]]!)

            while left <= right && maxi > k {
                if nums[left] == nums[right] {
                    maxi = maxi-1
                }
                map[nums[left]]! -= 1
                left += 1
            }

            length = max(length, right-left+1)
        }

        return length


    }
}
