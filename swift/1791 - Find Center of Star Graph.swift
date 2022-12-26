// Method 1:
class Solution {
    func findCenter(_ edges: [[Int]]) -> Int {
        if edges[0].contains(edges.last![0]) {
            return edges.last![0]
        } else {
            return edges.last![1]
        }
    }
}

// Method 2:
class Solution {
    func findCenter(_ edges: [[Int]]) -> Int {
        let hashCount = createHash(of: edges)

        return getNodeWithMaxCount(in: hashCount)
    }

    private func createHash(of edges: [[Int]]) -> [Int:Int] {
        var hashCount = [Int:Int]()

        for nodes in edges {
            hashCount[nodes[0], default: 0] += 1
            hashCount[nodes[1], default: 0] += 1
        }

        return hashCount
    }

    private func getNodeWithMaxCount(in hash: [Int:Int]) -> Int {
        var maxCount = Int.min
        var maxNode = Int.min

        for (key, value) in hash {
            if value > maxCount {
                maxCount = value
                maxNode = key
            } 
        }

        return maxNode
    }
}
