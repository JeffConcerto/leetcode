class Solution {
    func findDifference(_ nums1: [Int], _ nums2: [Int]) -> [[Int]] {
        let set1 = Set(nums1)
        let set2 = Set(nums2)

        let answer1 = getUnqiueIntegers(from: set1, comparedTo: set2)
        let answer2 = getUnqiueIntegers(from: set2, comparedTo: set1)

        return [answer1, answer2]
    }

    private func getUnqiueIntegers(from set1: Set<Int>, comparedTo set2: Set<Int>) -> [Int] {
        var result = [Int]()
        
        for num in set1 {
            guard !set2.contains(num) else { continue }
            result.append(num)
        }

        return result
    }
}
