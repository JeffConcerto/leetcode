// My Solution (Too Slow, failed Time limit):
class Solution {
    func subarraysDivByK(_ nums: [Int], _ k: Int) -> Int {
        var count = 0

        for i in 0..<nums.count {
            var sum = 0
            sum += nums[i]
            count = nums[i] % k == 0 ? count + 1 : count

            for j in i+1..<nums.count {
                sum += nums[j]
                guard sum % k == 0 else { continue }
                count += 1
            }
        }

        return count
    }
}

// Official Solution:
class Solution {
    func subarraysDivByK(_ nums: [Int], _ k: Int) -> Int {
        var n = nums.count
        var sumsDivisible = 0
        var prefixMod = 0

        // There are k mod groups 0...k-1:
        var modGroups = Array(repeating: 0, count: k)
        modGroups[0] = 1

        for num in nums {
            // Take modulo twice to avoid negative remainders:
            prefixMod = (prefixMod + num % k + k) % k

            // Add the count of subarrays that have the same remainder as current:
            sumsDivisible += modGroups[prefixMod]

            modGroups[prefixMod] += 1
        }

        return sumsDivisible
    }
}
