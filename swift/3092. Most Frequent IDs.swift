class Solution {
    func mostFrequentIDs(_ nums: [Int], _ freq: [Int]) -> [Int] {
        var counter = [Int:Int]()
        var result = [Int]()
        var maxCount = 0
        var maxId = -1
        
        for i in 0..<nums.count {
            let id = nums[i]
            let count = freq[i]
            counter[id, default:0] += count

            if id == maxId {
                maxCount = counter[id]!

                if count < 0 {
                    for (id, fre) in counter {
                        if fre > maxCount {
                            maxCount = fre
                            maxId = id
                        }
                    }
                }
            } else if counter[id]! > maxCount {
                maxCount = counter[id]!
                maxId = id
            }

            result.append(maxCount)
        }

        return result
    }
}
