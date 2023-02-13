// Couldn't solve: Solution adapted from neetcode:

class Solution {
    func minimumFuelCost(_ roads: [[Int]], _ seats: Int) -> Int {
        guard !roads.isEmpty else { return 0 }

        let adjList: [Int:[Int]] = roads.reduce(into:[:]) { list, road in
            list[road[0], default:[]].append(road[1])
            list[road[1], default:[]].append(road[0])
        }

        var totalFuel = 0

        func dfs(_ node: Int, _ parent: Int) -> Int {
            print(node, parent)
            let children = adjList[node]!
            var totalPassengers = 0

            for child in children {
                guard child != parent else { continue }
                let passengers = dfs(child, node)
                totalPassengers += passengers
                totalFuel += Int(ceil(Double(passengers) / Double(seats)))
            }
            
            return totalPassengers + 1
        }

        dfs(0,-1)

        return totalFuel
    }
}
