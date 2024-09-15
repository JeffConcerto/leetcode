class Solution {
    func getSneakyNumbers(_ nums: [Int]) -> [Int] {
        var seen = Set<Int>()
        var result = [Int]()

        for num in nums {
            if seen.contains(num) {
                result.append(num)
            } else {
                seen.insert(num)
            }
        }

        return result
    }
}
