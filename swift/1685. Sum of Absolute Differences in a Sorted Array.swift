class Solution {
    func getSumAbsoluteDifferences(_ nums: [Int]) -> [Int] {
        let n = nums.count
        var result = Array(repeating: 0, count: nums.count)
        var presum = [nums[0]]
        for right in 1..<nums.count {
           presum.append(presum[right-1] + nums[right])
        }

        for i in 0..<nums.count {
            let leftSum = presum[i] - nums[i]
            let rightSum = presum[n-1] - presum[i]

            let leftDiff = (i * nums[i]) - leftSum
            let rightDiff = rightSum - (n-i-1) * nums[i]
            result[i] = leftDiff + rightDiff
        }

        return result
    }
}

// class Solution {
//     func getSumAbsoluteDifferences(_ nums: [Int]) -> [Int] {
//         var result = Array(repeating: 0, count: nums.count)
//         var presum = nums[0]
//         for right in 1..<nums.count {
//             let element = nums[right]
//             presum += element
//             let targetSum = element * (right+1)
//             result[right] = targetSum - presum
//         }

//         var postsum = nums[nums.count-1]
//         for left in stride(from: nums.count-2, to: -1, by: -1) {
//             let element = nums[left]
//             postsum += element
//             let targetSum = element * (nums.count-left)
//             result[left] += abs(targetSum - postsum)
//         }

//         return result
//     }
// }
