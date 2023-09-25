class Solution {
    func sumIndicesWithKSetBits(_ nums: [Int], _ k: Int) -> Int {
        var sum = 0

        for (index,num) in nums.enumerated() {
            var bits = 0
            var index = index
            while index > 0 {
                bits += index % 2
                if bits > k { break }
                index /= 2
            }
            if bits == k { sum += num }
        }

        return sum
    }
}
