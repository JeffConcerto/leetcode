class Solution {
    func numOfMinutes(_ n: Int, _ headID: Int, _ managers: [Int], _ informTime: [Int]) -> Int {
        var adjList = [Int: [Int]]()
        var visited = Set<Int>()

        for (i, manager) in managers.enumerated() {
            adjList[manager, default: []].append(i)
        }

        func bfs() -> Int {
            var queue = [(headID,0)]
            var totalTime = 0
            while !queue.isEmpty {
                var size = queue.count
                for _ in 0..<size {
                    let (manager, routeTime) = queue.removeFirst()
                    totalTime = max(routeTime + informTime[manager], totalTime)
                    if let employees = adjList[manager] {
                        for employee in employees where adjList[employee] != nil {
                            queue.append((employee,informTime[manager] + routeTime))
                        }
                    }
                }
            }

            return totalTime
        }
        return bfs()
    }
}
