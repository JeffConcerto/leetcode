class Solution {
    func sumOfSquares(_ nums: [Int]) -> Int {
        let n = nums.count
        var sum = 0
        for i in 1...n {
            guard n % i == 0 else { continue }
            sum += nums[i-1] * nums[i-1]
        }

        return sum
    }
}
