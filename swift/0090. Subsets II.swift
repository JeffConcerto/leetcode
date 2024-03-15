class Solution {
    func subsetsWithDup(_ nums: [Int]) -> [[Int]] {
        let nums = nums.sorted()
        var result = [[Int]]()

        func dfs(_ i: Int, _ current: [Int]) {
            if i == nums.count {
                result.append(current)
            } else {
                dfs(i+1, current + [nums[i]])
                var i = i
                while i+1 < nums.count && nums[i] == nums[i+1] {
                    i += 1
                }
                dfs(i+1, current)
            }
        }

        dfs(0,[])
        return result
    }
}
