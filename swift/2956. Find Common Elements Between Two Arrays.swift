class Solution {
    func findIntersectionValues(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        let set1 = Set(nums1)
        let set2 = Set(nums2)

        var count1 = 0
        var count2 = 0

        for num in nums1 {
            if set2.contains(num) {
                count1 += 1
            }
        }

        for num in nums2 {
            if set1.contains(num) {
                count2 += 1
            }
        }

        return [count1,count2]
    }
}
