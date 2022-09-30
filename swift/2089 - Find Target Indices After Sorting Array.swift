class Solution {
    func targetIndices(_ nums: [Int], _ target: Int) -> [Int] {
        let sortedNums = nums.sorted()
        let result = sortedNums.indices.filter {sortedNums[$0] == target}
        
        return result
    }
}
