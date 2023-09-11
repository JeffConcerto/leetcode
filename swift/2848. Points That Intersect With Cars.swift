class Solution {
    func numberOfPoints(_ nums: [[Int]]) -> Int {
        var set = Set<Int>()

        for points in nums {
            for i in points[0]...points[1] {
                set.insert(i)
            }
        }

        return set.count
    }
}
