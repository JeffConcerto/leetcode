class Solution {
    func sortArray(_ nums: [Int]) -> [Int] {
        var nums = nums
        var tempArray = Array(repeating: 0, count: nums.count)
        mergeSort(&nums, 0, nums.count-1, &tempArray)
        return nums
    }

    private func merge(_ nums: inout [Int], _ left: Int, _ mid: Int, _ right: Int, _ tempNums: inout [Int]) {
        let start1 = left
        let start2 = mid+1
        let n1 = mid - left + 1
        let n2 = right - mid

        for i in 0..<n1 {
            tempNums[start1+i] = nums[start1+i]
        }

        for j in 0..<n2 {
            tempNums[start2+j] = nums[start2+j]
        }

        var i = 0, j = 0, k = left
    
        while i < n1 && j < n2 {
            if tempNums[start1 + i] <= tempNums[start2+j] {
                nums[k] = tempNums[start1+i]
                i += 1
            } else {
                nums[k] = tempNums[start2+j]
                j += 1
            }
            k += 1
        }

        while i < n1 {
            nums[k] = tempNums[start1+i]
            i += 1
            k += 1
        }

        while j < n2 {
            nums[k] = tempNums[start2+j]
            j += 1
            k += 1
        }
    }
}
