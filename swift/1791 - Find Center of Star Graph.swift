class Solution {
    func findCenter(_ edges: [[Int]]) -> Int {
        if edges[0].contains(edges.last![0]) {
            return edges.last![0]
        } else {
            return edges.last![1]
        }
    }
}
