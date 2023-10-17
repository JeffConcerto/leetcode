class Solution {
    func validateBinaryTreeNodes(_ n: Int, _ leftChild: [Int], _ rightChild: [Int]) -> Bool {
        // Must be connected, no cycle, and undirected
       var hasNoParent = Set(Array(0..<n))

       for i in 0..<n {
           hasNoParent.remove(leftChild[i])
           hasNoParent.remove(rightChild[i])
       }

       // Check if tree is undirected:
        if hasNoParent.count != 1 { return false}
        
        var queue = [hasNoParent.first!]
        var visited = Set<Int>() // checks for cycle
       
       while !queue.isEmpty {
           let node = queue.removeFirst()

           if visited.contains(node) { return false }
           visited.insert(node)

           if leftChild[node] != -1 {
               if visited.contains(leftChild[node]) { return false }
               queue.append(leftChild[node])
           }

           if rightChild[node] != -1 {
               if visited.contains(rightChild[node]) { return false }
               queue.append(rightChild[node])
           }
       }

       return visited.count == n // Ensures tree is connected
    }
}

