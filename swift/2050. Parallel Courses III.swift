// DFS:
class Solution {
    func minimumTime(_ n: Int, _ relations: [[Int]], _ time: [Int]) -> Int {
        var adjList = [Int:[Int]]()
        var memo = [Int: Int]()

        // Make an Adjacency List:
        for relation in relations {
            adjList[relation[0], default:[]].append(relation[1])
        }

        var answer = 0
        // Iterate over each node as starting point and get max time of the paths:
        for i in 1...n {
            answer = max(answer, dfs(i))
        }

        func dfs(_ i: Int) -> Int {
            if let cache = memo[i] {
                return cache
            }
            
            var result = time[i-1]

            if let neighbors = adjList[i] {
                for neighbor in neighbors {
                // Take the max of every path traversed
                    result = max(result, time[i-1] + dfs(neighbor))
                }
            } 

            memo[i] = result
            return result
        }

        return answer
    }
}

// Topological Sort:
class Solution {
    func minimumTime(_ n: Int, _ relations: [[Int]], _ time: [Int]) -> Int {
        var adjList = [Int:[Int]]()
        var indegree = Array(repeating:0, count: n+1)

        for edge in relations {
            let parent = edge[0]
            let child = edge[1]
            adjList[parent, default:[]].append(child)
            indegree[child] += 1
        }

        var queue = [Int]()
        var pathTime = Array(repeating: 0, count: n+1)

        // Setup Queue with souce nodes:
        for i in 1...n {
            if indegree[i] != 0 { continue }
            queue.append(i)
            pathTime[i] = time[i-1]
        }

        while !queue.isEmpty {
            let parent = queue.removeFirst()
            
            if let children = adjList[parent] {
                for child in children {
                    pathTime[child] = max(pathTime[child], time[child-1] + pathTime[parent])
                    indegree[child] -= 1
                    if indegree[child] == 0 {
                        queue.append(child)
                    }
                }
            }
        }

        var answer = 0

        for i in 1...n {
            answer = max(pathTime[i], answer)
        }

        return answer
    }
}

