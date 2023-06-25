class Solution {
    func countRoutes(_ locations: [Int], _ start: Int, _ finish: Int, _ fuel: Int) -> Int {
        let mod = 1_000_000_007
        var memo = [[Int]:Int]()

        func dfs(_ i: Int, _ fuelLeft: Int) -> Int {
            if fuelLeft < 0 { return 0}
            if i == finish && fuel == 0 { return 1 }
            if let cache = memo[[i,fuelLeft]] { return cache }
            
            var count = i == finish ? 1 : 0

            for j in 0..<locations.count where j != i {
                let fuelUsed = abs(locations[i]-locations[j])
                count += dfs(j, fuelLeft-fuelUsed)
            }

            memo[[i,fuelLeft]] = count % mod
            return count % mod
        }

        return dfs(start, fuel)
    }
}
