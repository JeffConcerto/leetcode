class Solution {
    func findTheArrayConcVal(_ nums: [Int]) -> Int {
        var concatValue = 0
        var left = 0
        var right = nums.count-1

        while left <= right {
            guard left != right else {
                concatValue += nums[left]
                break
            }

            let concat = String(nums[left]) + String(nums[right])
            concatValue += Int(concat)!
            left += 1
            right -= 1
        }

        return concatValue
    }
}
