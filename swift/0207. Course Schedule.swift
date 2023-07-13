class Solution {
    func canFinish(_ numCourses: Int, _ prerequisites: [[Int]]) -> Bool {
        var adjList = [Int: [Int]]()
        var memo = [Int: Bool]()

        for prereq in prerequisites {
            if prereq[0] == prereq[1] { return false }
            adjList[prereq[1], default:[]].append(prereq[0])
        }


        func dfs(_ i: Int, _ seen: Set<Int>) -> Bool {
            if seen.contains(i) { return false }
            if let cache = memo[i] { return cache }

            var result = true 

            if let neighbors = adjList[i] {
                for neighbor in neighbors {
                    if !dfs(neighbor,seen.union([i])) { result = false; break }
                }
            }

            memo[i] = result
            return result
        }

        for i in 0..<numCourses {
            guard adjList[i] != nil else { continue }
            if let cache = memo[i], cache == false { return false }
           
            if !dfs(i, Set<Int>()) {return false}
        }

        return true
    }
}
