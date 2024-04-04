class Solution {
    func minimumSubarrayLength(_ nums: [Int], _ k: Int) -> Int {
        var counter = Array(repeating: 0, count: 32)
        var left = 0
        var sum = 0
        var mini = Int.max
        for right in 0..<nums.count {
            sum |= nums[right]
            let bits = getBitCounts(for: nums[right])
            for bit in bits {
                counter[bit] += 1
            }
            while left <= right && sum >= k {
                mini = min(mini, right-left+1)
                if mini == 1 { return 1 }
                let removeBits = getBitCounts(for: nums[left])
                for bit in removeBits {
                    counter[bit] -= 1
                    if counter[bit] == 0 {
                        sum -= 1 << (bit)
                    }
                }
                left += 1
            }

        }
        return mini == Int.max ? -1 : mini
    }

    func getBitCounts(for num: Int) -> [Int] {
        var num = num
        var bit = 0
        var bits = [Int]()
        while num > 0 {
            if num % 2 == 1 {
                bits.append(bit)
            }
            num /= 2
            bit += 1
        }

        return bits
    }
}
