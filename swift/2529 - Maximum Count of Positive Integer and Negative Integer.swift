class Solution {
    func maximumCount(_ nums: [Int]) -> Int {
        var negatives = 0
        var positives = 0
        
        for num in nums {
            if num < 0 {
                negatives += 1
            } else if num > 0 {
                positives += 1
            }
        }

        return max(negatives, positives)
    }
}
