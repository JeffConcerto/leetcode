class Solution {
    func distinctAverages(_ nums: [Int]) -> Int {
        var set: Set<Double> = []
        var nums = nums.sorted()
        
        while !nums.isEmpty {
            let min = Double(nums.removeFirst())
            let max = Double(nums.removeLast())
            let avg = (min + max) / 2.0
            set.insert(avg)
        }
        
        return set.count
    }
}
