class Solution {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var nums1 = Set(nums1)
        var result = [Int]()
        for num in nums2 {
            if nums1.contains(num) {
                result.append(num)
                nums1.remove(num)
            }
        }
        return result
    }
}
