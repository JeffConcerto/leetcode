import Collections

class Solution {
    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
        var minHeap = Heap<Int>()

        for num in nums {
            if minHeap.count < k {
                minHeap.insert(num)
            } else {
                if num > minHeap.min! {
                    minHeap.removeMin()
                    minHeap.insert(num)
                }
            }
        }

        return minHeap.min!        
    }
}
