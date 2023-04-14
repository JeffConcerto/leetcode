class Solution {
    func lastStoneWeight(_ stones: [Int]) -> Int {
        var stones = stones
        while stones.count > 1 {
            stones.sort(by:>)
            stones[0] = stones[0] - stones[1]
            stones.remove(at: 1)
        }

        return stones.count == 1 ? stones[0] : 0
    }
}
