
class KthLargest {
    private let k: Int
    private var nums: [Int]

    init(_ k: Int, _ nums: [Int]) {
        self.k = k
        self.nums = nums.sorted(by:>)    
    }
    
    func add(_ val: Int) -> Int {
        let index = binarySearch(val)
        nums.insert(val, at: index)
        return nums[k-1]
    }

    private func binarySearch(_ num: Int) -> Int {
        guard !nums.isEmpty else { return 0 }
        var low = 0
        var high = nums.count-1

        while low <= high {
            let middle = low + (high-low)/2
            if nums[middle] == num { return middle}
            if nums[middle] > num {
                low = middle + 1
            } else {
                high = middle - 1
            }
        }
        return low
    }
}

/**
 * Your KthLargest object will be instantiated and called as such:
 * let obj = KthLargest(k, nums)
 * let ret_1: Int = obj.add(val)
 */
