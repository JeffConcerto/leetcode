class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var set = Set<Int>()

        for num in nums {
            guard !set.contains(num) else { return true }
            set.insert(num)
        }

        return false
    }
}
