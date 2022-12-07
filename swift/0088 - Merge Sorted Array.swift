class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var nums1Copy = Array(nums1[0..<m])
        var i = 0
        var j = 0
        var index = 0
        while i < m && j < n {
            if nums1Copy[i] <= nums2[j] {
                nums1[index] = nums1Copy[i]
                i += 1
            } else {
                nums1[index] = nums2[j]
                j += 1
            }
            index += 1
        }

        while i < m {
            nums1[index] = nums1Copy[i]
            i += 1
            index += 1
        }

        while j < n {
            nums1[index] = nums2[j]
            j += 1
            index += 1
        }
        
    }
}
