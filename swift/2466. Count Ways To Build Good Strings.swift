class Solution {
    func countGoodStrings(_ low: Int, _ high: Int, _ zero: Int, _ one: Int) -> Int {
        let mod = 1_000_000_007
        var cache = [Int:Int]()
        func dfs(_ stringCount: Int) -> Int {
            guard stringCount <= high else { return 0 }
            if let result = cache[stringCount] {
                return result
            }
            var count = 0
            if stringCount >= low && stringCount <= high {
                count += 1
            }

            count = (count + dfs(stringCount + zero)) % mod
            count = (count + dfs(stringCount + one)) % mod
            cache[stringCount] = count
            return count
        }

       return dfs(0)
    }
}
