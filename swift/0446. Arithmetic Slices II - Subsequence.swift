// My Solution: Too Slow:
class Solution {
    func numberOfArithmeticSlices(_ nums: [Int]) -> Int {
        var memo = [[Int]:Int]()

        func dfs(_ i: Int, _ prev: Int, _ diff: Int, _ total: Int) -> Int {
            if i == nums.count {
                return total >= 3 ? 1 : 0
            }
            if let cache = memo[[i,prev,diff,total]] { return cache }
            var result = 0

            if total == 0 {
                result = dfs(i+1, i, 0, 1)
            } else if total == 1 {
                result = dfs(i+1, i, nums[i]-nums[prev], 2)
            } else {
                if nums[i] - nums[prev] == diff {
                    result = dfs(i+1, i, diff, total + 1)
                } 
            }

            result += dfs(i+1, prev, diff, total)
            memo[[i,prev,diff,total]] = result
            return result
        }

        return dfs(0,0,0,0)
    }
}

// Actual Solution:
class Solution {
    func numberOfArithmeticSlices(_ nums: [Int]) -> Int {
        let n = nums.count

        // Sequence must contain at least 3 numbers to be valid:
        guard n >= 3 else { return 0 }

        // dp is an array of hash maps wherein each hash map has a key 
        // of difference with a value cotaining the count of arithmetic
        // sequences that contain diff, ending at nums[i]
        var dp: [[Int:Int]] = Array(repeating: [:], count: n)
        var count = 0
        var diff: Int

        for i in 1..<n {
            for j in 0..<i {
                diff = nums[i]-nums[j]
                dp[i][diff, default:0] += dp[j][diff,default:0] + 1
                count += dp[j][diff,default:0]
            }
        }

        return count

    }
}
