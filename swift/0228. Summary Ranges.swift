class Solution {
    func summaryRanges(_ nums: [Int]) -> [String] {
        guard !nums.isEmpty else { return [] }
        var result = [String]()
        var startRange = -1
        var endRange = -1

        for (i,num) in nums.enumerated() {
            if startRange == -1 {
                startRange = num
                endRange = num
            } else {
                if num-nums[i-1] == 1 {
                    endRange = num
                } else {
                    if startRange == endRange {
                        result.append("\(startRange)")
                    } else {
                        result.append("\(startRange)->\(endRange)")
                    }
                    startRange = num
                    endRange = num
                }
            }   
        }
         if startRange == endRange {
            result.append("\(startRange)")
        } else {
            result.append("\(startRange)->\(endRange)")
        }

        return result
    }
}
