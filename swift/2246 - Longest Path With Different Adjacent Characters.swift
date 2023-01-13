// Needed help to get solution:

class Solution {
    func longestPath(_ parent: [Int], _ s: String) -> Int {
      let string = Array(string)
      let n = parent.count

      let tree = buildTree(from: parent)
      print(tree)

      var longestPathCount = 0

      dfs(0, tree, string, &longestPathCount)

      return longestPathCount
    }
  
  private func buildTree(from parent: [Int]) -> [[Int]] {
    var tree = Array(repeating: [Int](), count: parent.count)
    
    for child in 0..<parent.count {
        guard parent[child] != -1 else { continue }
        tree[parent[child]].append(child)
    }
    
    return tree
}
  
  
private func dfs(_ parent: Int, _ tree: [[Int]], _ string: [Character], _ result: inout Int) -> Int {
    var longestPath = 0
    var secondLongest = 0
    
    for child in tree[parent] {
        let path = dfs(child, tree, string, &result)
        
        guard string[child] != string[parent] else { continue }

        
        if path > longestPath {
            (secondLongest, longestPath) = (longestPath, path)
        } else if path > secondLongest {
            secondLongest = path
        }
    }
        
    result = max(result, longestPath + secondLongest + 1)
    
    return 1 + longestPath
}

}

