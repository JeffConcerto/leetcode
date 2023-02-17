class Solution {
    func subsets(_ nums: [Int]) -> [[Int]] {
        var sets: [[Int]] = [[]]

        for num in nums {
            for set in sets {
                sets.append(set + [num])
            }
        }

        return sets
    }
}
