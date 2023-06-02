class Solution {
    func maximumDetonation(_ bombs: [[Int]]) -> Int {
        var adjList = [Int: [Int]]()

        for i in 0..<bombs.count {
            for j in i+1..<bombs.count {
                let distance = getDistance(bombs[i], bombs[j])
                if distance <= bombs[i][2] {
                    adjList[i, default:[]].append(j)
                }

                if distance <= bombs[j][2] {
                    adjList[j,default:[]].append(i)
                }
            }
        }


        func dfs(_ i: Int, _ detonated: inout Set<Int>) -> Int {
            guard !detonated.contains(i) else { return 0 }
            detonated.insert(i)

            for j in adjList[i] ?? [] {
                guard !detonated.contains(j) else { continue }
                dfs(j, &detonated)
            }
            return detonated.count
        }

        var maxBombs = 0
        for i in 0..<bombs.count {
            var detonated = Set<Int>()
            maxBombs = max(maxBombs, dfs(i,&detonated))
        }

        return maxBombs
    }

    private func getDistance(_ bomb1: [Int], _ bomb2: [Int]) -> Int {
        let x = pow(Double(bomb1[0] - bomb2[0]), 2)
        let y = pow(Double(bomb1[1] - bomb2[1]), 2)
        print(x,y)
        return Int(ceil(sqrt(x+y)))
    }
}
