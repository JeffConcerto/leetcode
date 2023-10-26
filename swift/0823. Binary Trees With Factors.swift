class Solution {
    func numFactoredBinaryTrees(_ arr: [Int]) -> Int {
        let mod = 1_000_000_007
        let arr = arr.sorted()
        var memo = [Int:Int]()

        func dfs(_ node: Int) -> Int {
            if let cache = memo[node] { return cache }

            var result = 1

            for left in arr {
                if left == node { break }
                if node % left == 0  {// check if divisor 
                    if let cacheRight = memo[node/left] {
                        let leftResult = memo[left] ?? dfs(left)
                        result += (leftResult * cacheRight)
                    }
                }
            }

            result = result % mod
            memo[node] = result
            return result
        }

        var answer = 0

        for node in arr {
            answer += dfs(node)
            answer = answer % mod
        }

        return answer
    }
}
