class Solution {
    func shortestAlternatingPaths(_ n: Int, _ redEdges: [[Int]], _ blueEdges: [[Int]]) -> [Int] {
        // Create an Adjacency List for the red and blue edges:
        let redAdjList = redEdges.reduce(into: [:]) { dict, edge in
            dict[edge[0], default: []].append(edge[1])
         }

         let blueAdjList = blueEdges.reduce(into: [:]) { dict, edge in
            dict[edge[0], default:[]].append(edge[1])
         }

         var result = [Int]()

         // Do BFS on the edges:
         for destination in 0..<n {
             if redAdjList[0] != nil && blueAdjList[0] != nil {
                 let redResult = BFS(redAdjList, blueAdjList, destination, true)
                 let blueResult = BFS(redAdjList, blueAdjList, destination, false)
                 if redResult == -1 {
                     result.append(blueResult)
                 } else if blueResult == -1 {
                     result.append(redResult)
                 } else {
                    result.append(min(redResult,blueResult))
                 }
             } else {
                let startRed = redAdjList[0] == nil ? false : true
                result.append(BFS(redAdjList, blueAdjList, destination, startRed))
             }
         }

         return result
    }

    private func BFS(_ redList: [Int:[Int]], _ blueList: [Int:[Int]], _ destination: Int, _ startRed: Bool) -> Int {
        var visited = Set<[Int]>()
        var queue = [(0,0)]
        var isRed = startRed

        while !queue.isEmpty {
            let (node, distance) = queue.removeFirst()
            guard node != destination else { return distance }
            let list: [Int]?
            if startRed {
                if distance % 2 == 0 {
                    list = redList[node]
                    isRed = true
                } else {
                    list = blueList[node]
                    isRed = false
                }
            } else {
                if distance % 2 == 0 {
                    list = blueList[node]
                    isRed = false
                } else {
                    list = redList[node]
                    isRed = true
                }
            }
            guard let neighbors = list else { continue }
            for neighbor in neighbors {
                guard !visited.contains([neighbor, isRed ? 0 : 1]) else { continue }
                visited.insert([neighbor, isRed ? 0 : 1])
                queue.append((neighbor, distance+1))
            }
        }

        return -1
    }
}
