class Solution {
    func canJump(_ nums: [Int]) -> Bool {
        var last = 0

        for (i,num) in nums.enumerated() {
            if last < i { return false}
            last = max(last, num + i)
        }

        return true
    }
}
