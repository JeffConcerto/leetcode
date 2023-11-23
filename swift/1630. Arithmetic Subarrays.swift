class Solution {
    func checkArithmeticSubarrays(_ nums: [Int], _ l: [Int], _ r: [Int]) -> [Bool] {
        var result = [Bool]()

        for i in 0..<l.count {
            let left = l[i]
            let right = r[i]
            let arr = Array(nums[left...right]).sorted()
            let diff = arr[1] - arr[0]
            var answer = true
            for i in 1..<arr.count {
                if arr[i] - arr[i-1] != diff {
                    answer = false
                }
            }
            result.append(answer)
        }

        return result
    }
}
