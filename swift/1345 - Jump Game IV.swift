class Solution {
    func minJumps(_ arr: [Int]) -> Int {
        guard arr.count > 1 else { return 0 }
        var indexMap = [Int: [Int]]()
        for index in 0..<arr.count {
            indexMap[arr[index], default:[]].append(index)
        }
      
        var queue = [0]
        let finish = arr.count-1
        var visited: Set<Int> = [0]
        var jumps = 0
        while !queue.isEmpty {
            jumps += 1
            let size = queue.count
            for _ in 0..<size {
                let node = queue.removeFirst()
                var neighbors = [Int]()
                neighbors += indexMap[arr[node]] ?? []
                indexMap[arr[node]] = nil
                if node > 0 {
                    neighbors.append(node-1)
                }
                if node < arr.count-1 {
                    neighbors.append(node+1)
                }
               for neighbor in neighbors {
                  guard !visited.contains(neighbor) else { continue }
                  if neighbor == finish { return jumps }
                  visited.insert(neighbor)
                  queue.append(neighbor)
              }
            }
        }
       
        return jumps
    }
}
