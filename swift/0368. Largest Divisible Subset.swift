class Solution {
    func largestDivisibleSubset(_ nums: [Int]) -> [Int] {
        let nums = nums.sorted()
        var memo = [[Int]: [Int]]()

        func dfs(_ i: Int, _ previous: Int) -> [Int] {
            if i == nums.count {
                return []
            }
            let key = [i, previous+1]

            if let cache = memo[key] { return cache }
            
            var use = [Int]()
            if previous == -1 || nums[i] % nums[previous] == 0 {
                use = [nums[i]] + dfs(i+1, i)
            }

            let skip = dfs(i+1, previous)

            let result = use.count > skip.count ? use : skip
            memo[key] = result
            return result
        }
        
        return dfs(0,-1)
    }
}
