class Solution {
    func hasTrailingZeros(_ nums: [Int]) -> Bool {
        var evens = 0

        for num in nums {
            evens += num % 2 == 0 ? 1 : 0
            if evens == 2 { return true }
        }

        return false
    }
}
