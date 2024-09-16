import Collections

class Solution {
    func lastStoneWeight(_ stones: [Int]) -> Int {
        var heap: Heap<Int> = Heap(stones)

        while heap.count > 1 {
            let x = heap.removeMax()
            let y = heap.removeMax()

            let newStone = x-y
            if newStone > 0 {
                heap.insert(newStone)
            }
        }
        return heap.isEmpty ? 0 : heap.max!        
    }
}

// Old Solution:
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
