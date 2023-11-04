class Solution {
    func getLastMoment(_ n: Int, _ left: [Int], _ right: [Int]) -> Int {
       let leftMax = left.max() ?? 0
       let rightMin = right.min() ?? n

       return max(n-rightMin, leftMax)
    }
}
