class Solution {
    func minOperations(_ nums: [Int], _ k: Int) -> Int {
        var bitSum = nums[0]

        for i in 1..<nums.count {
            bitSum ^= nums[i]
        }

        var bitsForK = [Int]()
        var num = k
        while num > 0 {
            bitsForK.append(num%2)
            num /= 2
        }

        var bitsForSum = [Int]()
        while bitSum > 0 {
            bitsForSum.append(bitSum%2)
            bitSum /= 2
        }

        var i = 0
        var differences = 0

        while i < max(bitsForSum.count, bitsForK.count) {
            let digitA = i < bitsForSum.count ? bitsForSum[i] : 0
            let digitB = i < bitsForK.count ? bitsForK[i] : 0
            if digitA != digitB { differences += 1 }
            i += 1
        }

        return differences
    }
}
