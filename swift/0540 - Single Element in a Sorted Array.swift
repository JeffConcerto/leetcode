class Solution {
    func singleNonDuplicate(_ nums: [Int]) -> Int {
        var low = 0
        var high = nums.count-1

        while low < high {
            let middle = (low+high)/2

            if nums[middle] == nums[middle+1] {
                let nextHalfCount = nums.count-1 - middle+1
                if nextHalfCount % 2 == 0 {
                    high = middle-1
                } else {
                    low = middle + 2
                }
            } else if nums[middle] == nums[middle-1] {
                 let nextHalfCount = nums.count - middle+1
                if nextHalfCount % 2 == 0 {
                    high = middle-2
                } else {
                    low = middle + 1
                }
            } else {
                return nums[middle]
            }
        }
        return nums[low]
    }
}
