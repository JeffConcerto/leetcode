// Solution from NeetCode:

class Solution {
    func largestPathValue(_ colors: String, _ edges: [[Int]]) -> Int {
        var colors = Array(colors)

        var adjList = [Int: [Int]]()
        for edge in edges {
            adjList[edge[0], default:[]].append(edge[1])
        }

         var seen = Set<Int>()
         var path = Set<Int>()
        var colorMap = Array(repeating: Array(repeating: 0, count: 26), count: colors.count)

         var count = -1
         let asciiStart = Character("a").asciiValue!

        func dfs(_ node: Int) -> Int {
            guard !path.contains(node) else { return Int.max }
            guard !seen.contains(node) else { return 0 }

            seen.insert(node)
            path.insert(node)
            let colorIndex = Int(colors[node].asciiValue! - asciiStart)
            colorMap[node][colorIndex] = 1

            if let neighbors = adjList[node] {
                for neighbor in neighbors {
                   if dfs(neighbor) == Int.max { return Int.max }
                   for color in 0..<26 {
                       if color == colorIndex {
                        colorMap[node][color] = max(colorMap[node][color], colorMap[neighbor][color]+1)
                       } else {
                       colorMap[node][color] = max(colorMap[node][color], colorMap[neighbor][color])
                       }
                   }
                }
            }
            path.remove(node)
            return colorMap[node].max()!
        }


       for i in 0..<colors.count {
           count = max(count, dfs(i))
       }

         return count == Int.max ? -1 : count
    }
}
