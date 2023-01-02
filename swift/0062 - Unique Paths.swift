class Solution {
    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        var memo = [[Int]: Int]()
        return helper(m, n, 0, 0, &memo)
    }

    private func helper(_ m: Int, _ n: Int, _ currentM: Int, _ currentN: Int, _ memo: inout [[Int]: Int]) -> Int {
        guard currentM < m && currentN < n else  { return 0 }
        if let paths = memo[[currentM,currentN]] {
            return paths
        }

        if currentM == m-1 && currentN == n-1 { return 1}

        let downPaths = helper(m, n, currentM + 1, currentN, &memo)
        let rightPaths = helper(m, n, currentM, currentN + 1, &memo)

        memo[[currentM, currentN]] = downPaths + rightPaths
        return memo[[currentM,currentN]]!
    }
}
