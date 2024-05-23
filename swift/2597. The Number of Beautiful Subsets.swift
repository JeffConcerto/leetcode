class Solution {
    func beautifulSubsets(_ nums: [Int], _ k: Int) -> Int {
        let nums = nums.sorted()

       func dfs(_ i: Int, _ set: Set<Int>) -> Int {
        if i == nums.count {
            return 1
        }
        var total = 0
        total += dfs(i+1, set)
        var set = set
        if !set.contains(nums[i] - k) {
            set.insert(nums[i])
            total += dfs(i+1, set)
        } 
        

        return total
       } 

       return dfs(0, Set<Int>()) - 1
    }
}

