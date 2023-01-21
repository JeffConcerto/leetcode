class Solution {
    func getCommon(_ nums1: [Int], _ nums2: [Int]) -> Int {
        // Find which array has samllest length, convert to 
        // a Set, and pass larger array to new variable name
        // so we know which is larger.
        // Using a Set will alow for O(1) lookup time:
        let setSmallestArray: Set<Int>
        let largerArray: [Int]

        if nums1.count < nums2.count {
            setSmallestArray = Set(nums1)
            largerArray = nums2
        } else {
            setSmallestArray = Set(nums2)
            largerArray = nums1
        }

        // Iterate over larger array checking for first number in common
        // with smaller array (which is now a Set):
        for num in largerArray {
            guard setSmallestArray.contains(num) else { continue }
            return num
        }

        // If no number was found in common, return -1:
        return -1
    }
}
