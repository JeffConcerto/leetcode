class Solution {
    func PredictTheWinner(_ nums: [Int]) -> Bool {
        var memo = [[Int]:Int]()
        let total = nums.reduce(0,+)

    
       func dfs(_ first: Int, _ last: Int, _ isP1Turn: Bool) -> Int {
           if first > last { return 0 }
           if let cache = memo[[first,last,isP1Turn ? 1 : 0]] {
               return cache
           }
           var result = 0

           if isP1Turn {
               result = max(nums[first] + dfs(first+1,last,false), nums[last] + dfs(first,last-1,false))
           } else {
                result = min(dfs(first+1,last,true), dfs(first,last-1,true))
           }

           memo[[first,last,isP1Turn ? 1 : 0]] = result
           return result
       }

       let score = dfs(0,nums.count-1,true)
       return score >= total-score
    }
}
