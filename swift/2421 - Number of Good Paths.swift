// Could not solve on my own. Solution borrowed from adanilyak:

class Solution {
    func numberOfGoodPaths(_ vals: [Int], _ edges: [[Int]]) -> Int {
        let n = vals.count

        let adjList = getAdjacencyList(from: edges)

        var valuesMap = vals.enumerated().reduce(into: [:]) { map, enumerated in
            map[enumerated.element, default: []].append(enumerated.offset)
        }
        
        var result = 0

        let set = DisjointSet(size: n)

        let sortedValueKeys = valuesMap.keys.sorted()

        for value in sortedValueKeys {
            for node in valuesMap[value] ?? [] {
                for neighbor in adjList[node] ?? [] {
                    if vals[node] >= vals[neighbor] {
                        set.union(node, neighbor)
                    }
                }
            }

             var unionSizes: [Int: Int] = [:]
            for node in valuesMap[value] ?? [] {
                unionSizes[set.find(node), default: 0] += 1
            }

            for size in unionSizes.values {
                result += (size * (size + 1) / 2)
            }
        }

        return result
    }

    private func getAdjacencyList(from edges: [[Int]]) -> [Int: [Int]] {
        var list = [Int: [Int]]()

        for edge in edges {
            list[edge[0], default: []].append(edge[1])
            list[edge[1], default: []].append(edge[0])
        }

        return list
    }

    private class DisjointSet {
        private(set) var parent: [Int]

        init(size: Int) {
            parent = Array(0..<size)
        }

        func union(_ x: Int, _ y: Int) {
            let xi = find(x)
            let yi = find(y)
            parent[xi] = yi
        }

        func find(_ x: Int) -> Int {
            if x == parent[x] { return x }

            let xi = find(parent[x])
            parent[x] = xi
            return xi
        }
    } 
}
