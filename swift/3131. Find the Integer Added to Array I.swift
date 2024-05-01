class Solution {
    func addedInteger(_ nums1: [Int], _ nums2: [Int]) -> Int {
        let nums1 = nums1.sorted()
        let nums2 = nums2.sorted()

        return nums2[0] - nums1[0]
    }
}
