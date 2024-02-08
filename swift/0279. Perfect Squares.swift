class Solution {
    var memo = [Int:Int]()
    func numSquares(_ n: Int) -> Int {
        func dfs(_ n: Int) -> Int {
            if n < 0 { return Int.max }
            if n <= 1 { return n }
            if let cache = memo[n] { return cache }
            var result = 10_000
            for num in 1..<n {
                let square = num * num
                if square > n { break }
                result = min(result, 1 + dfs(n-square))
            }

            memo[n] = result
            return result
        }

        return dfs(n)
    }
}
